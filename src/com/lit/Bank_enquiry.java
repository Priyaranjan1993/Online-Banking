package com.lit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Bank_enquiry
 */
@WebServlet("/Bank_enquiry")
public class Bank_enquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bank_enquiry() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		String u = request.getParameter("userid");
		
		if(EnquiryDao.validate(u))
		{
			RequestDispatcher rd = request.getRequestDispatcher("Enquiry.jsp");
			rd.forward(request,response);
		}
		else
		{
			//out.print("Sorry username or password error");
			//RequestDispatcher rd = request.getRequestDispatcher("user_id.jsp");
			response.sendRedirect("Admin_bank.jsp?message=Invalid user");
			//rd.include(request, response);
		}
		out.close();
	}
	}


