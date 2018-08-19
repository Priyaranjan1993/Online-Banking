<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		String option =request.getParameter("content");
		if (option.equals("Banking"))
		{
		      out.print("<form action='Authenticate1'>");
		      out.print("enter ur account number<input type='text' name='number'><br>");
		      out.print("enter your date of birth<input type='date' name='dob'><br>");
		      out.print("enter mailing zip code<input type='text' name='code'><br>");
		      out.print("<input type='hidden' option='Banking' value='Banking'><br>");
				
	    }
		else if (option.equals("Credit Card"))
		{
		      out.print("<form action='Authenticate2'>");
		      out.print("enter ur card number<input type='text' name='number'><br>");
		      out.print("enter your date of birth<input type='date' name='dob'><br>");
		      out.print("enter mailing zip code<input type='text' name='code'><br>");
		      out.print("<input type='hidden' option='Credit Card' value='Credit Card'><br>");
				
	    }
		else
		{
			out.print("invalid choice");
		}


%>

</body>
</html>