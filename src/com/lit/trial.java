package com.lit;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class trial
 */
@WebServlet("/trial")
public class trial extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trial() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		String nn = request.getParameter("n");
		String pp = request.getParameter("p");
		try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
		PreparedStatement pst=con.prepareStatement("select user_type from register where USER_ID =? and PASSWORD =? ");  
		pst.setString(1,nn);  
		pst.setString(2,pp);  
		ResultSet rst=pst.executeQuery(); 
		 if(rst.next()){  
	         String type=rst.getString("user_type");  
	         if("Admin".equals(type)){
	        	 RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
	 			rd.forward(request,response);
	         }
	         else
	         {
	        	 RequestDispatcher rd = request.getRequestDispatcher("Welcome.jsp");
 
	         }
		 }
		}
		catch(Exception ee)
		{
			ee.printStackTrace();
		}

		
		
		
	}

}
