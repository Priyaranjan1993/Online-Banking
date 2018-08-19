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
 * Servlet implementation class Second
 */
@WebServlet("/Second")
public class Second extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Second() {
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
		String n = request.getParameter("name1");
		String c = request.getParameter("name2");

		if(OtpDao.validate(n,c))
		{
			RequestDispatcher rd = request.getRequestDispatcher("OTP.jsp");
			rd.forward(request,response);
		}
		else
		{
			//out.print("Sorry username or password error");
			//RequestDispatcher rd = request.getRequestDispatcher("user_id.jsp");
			//response.sendRedirect("cc.jsp?message=Invalid user");
			response.sendRedirect("Otpfail.jsp");
			//rd.include(request, response);
		}
		out.close();
	}
	

		
	}


