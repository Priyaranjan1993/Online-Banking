<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String account=request.getParameter("block");
String block="";
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
	PreparedStatement ps=con.prepareStatement("select block from register where  accno=?");
	ps.setString(1,account);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	block=rs.getString(1);
	rs.close();
	ps.close();
	String query="update REGISTER set block='true' where ACCNO ='"+account+"'";
	ps=con.prepareStatement(query);
	ps.executeUpdate();
	response.sendRedirect("userblocked.jsp");
}
catch(Exception ee)
{
	ee.printStackTrace();
}
	
%>

</body>
</html>