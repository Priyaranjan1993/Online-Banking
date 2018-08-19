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
 * Servlet implementation class OTPCheck
 */
@WebServlet("/OTPCheck")
public class OTPCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OTPCheck() {
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
		String n = request.getParameter("userid");
		String c = request.getParameter("passwd");

		if(AccountDao.validate(n,c))
		{
			RequestDispatcher rd = request.getRequestDispatcher("user_id.html");
			rd.forward(request,response);
		}
		else
		{
			//out.print("Sorry username or password error");
			//RequestDispatcher rd = request.getRequestDispatcher("user_id.jsp");
			response.sendRedirect("OTP.jsp?message=Invalid OTP");
			//response.sendRedirect("Otp.jsp");
			//rd.include(request, response);
		}

}
}
