<%@ page language="java" import="java.sql.*"   
 contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String name=(String)session.getAttribute("name");

if(name==null) {%><jsp:forward page="user_id.jsp"></jsp:forward><%} %>
<%
String actno = request.getParameter("account");
int act=Integer.parseInt(actno);
try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
		PreparedStatement stmt=con.prepareStatement("update savings set type=?,cheque=? where accno=?");
		stmt.setString(1,"bank");
		stmt.setString(2,"true");
	    stmt.setInt(3,act);
	    int i=stmt.executeUpdate();
		//out.print("success");
		if(i>0)
			{
				response.sendRedirect("checksuccess.jsp");
			}

		
	}
	catch(Exception ee)
	{
		System.out.println(ee);
	}

%>
</body>
</html>