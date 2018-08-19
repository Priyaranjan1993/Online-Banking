package com.lit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class First
 */
@WebServlet("/First")
public class First extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public First() {
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
		String n = request.getParameter("name");
		String p = request.getParameter("passwd");
		String u = request.getParameter("utype");
		HttpSession ss=request.getSession();
		if(RegisterDao.validate(n,p) && LoginDao.validate(n,u))
		{
			ss.setAttribute("name",n);
			if("Admin".equals(u))
			{
			RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
			rd.forward(request,response);
			}
			else if("User".equals(u))
			{
				RequestDispatcher rd = request.getRequestDispatcher("checkblock.jsp");
				rd.forward(request,response);
			}
		}
		else
		{
			//out.print("Sorry username or password error");
			//RequestDispatcher rd = request.getRequestDispatcher("user_id.jsp");
			response.sendRedirect("user_id.jsp?message=Invalid user");
			//rd.include(request, response);
		}
		out.close();
	}
	

	}


