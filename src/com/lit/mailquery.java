package com.lit;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mailquery
 */
@WebServlet("/mailquery")
public class mailquery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mailquery() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
					String semail=request.getParameter("email");
					String squery=request.getParameter("query");
					String remsg=request.getParameter("your_message");
					String qid=request.getParameter("id");
					String mymesg="";
					PrintWriter out=response.getWriter();

					
					try
				       {
				    	   	Class.forName("oracle.jdbc.driver.OracleDriver");
							Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
							PreparedStatement ps=con.prepareStatement("update query set reply=? where qid=?");
							ps.setString(1,remsg);
							ps.setString(2,qid);
							ps.executeUpdate();
							
							mymesg=reply.send(qid,semail,squery,remsg);

							response.sendRedirect("replyquery.jsp?message="+mymesg+"");
							
				       }
					catch(Exception ee)
					{
						ee.printStackTrace();
					}
					


	}

}
