<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	    int pin=Integer.parseInt(request.getParameter("pinno"));
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
	String query="update credit_card set block='true'";
	PreparedStatement stmt=con.prepareStatement(query);
	stmt.executeUpdate();
	response.sendRedirect("updateblock.jsp");
	
}
catch(Exception ee)
{
ee.printStackTrace();
}
%>

</body>
</html>