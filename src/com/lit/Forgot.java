package com.lit;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;  
import javax.mail.*;  
import javax.mail.internet.*;  
import java.sql.*;
/**
 * Servlet implementation class Forgot
 */
@WebServlet("/Forgot")
public class Forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forgot() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pass="";
		String mail="";
		try
	       {
	    	   	Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
				//in fixed accno how much is the balance from the savings table(sender)
				PreparedStatement ps=con.prepareStatement("select * from register where user_id=?");
				ps.setString(1,request.getParameter("uid"));
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					//retrived balance
					pass=rs.getString(3);
					mail=rs.getString(4);
				}
				rs.close();
				ps.close();
				String mymail=SendPass.send(pass,mail);
				response.sendRedirect("password.jsp?message="+mymail+"");
				
	       }
		catch(Exception ee)
		{
			ee.printStackTrace();
		}
	}

}
