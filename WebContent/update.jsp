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
String accno1=request.getParameter("accno");
String name1=request.getParameter("name");
String Email1=request.getParameter("Email");
String Address1=request.getParameter("Address");
String city1=request.getParameter("city");
String state1=request.getParameter("state");
String Mobile1=request.getParameter("Mobile");
try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
		String query="update REGISTER set NAME='"+name1+"', EMAIL='"+Email1+"',ADDRESS='"+Address1+"',CITY='"+city1+"',STATE='"+state1+"',MOB_PHONE='"+Mobile1+"' where ACCNO ='"+accno1+"'";
		PreparedStatement stmt=con.prepareStatement(query);
		stmt.executeUpdate();
		response.sendRedirect("updatesuccess.jsp");
		
}
catch(Exception ee)
	{
	ee.printStackTrace();
	}
%>
</body>
</html>