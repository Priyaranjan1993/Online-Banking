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
String name=(String)session.getAttribute("name");
String block="";
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
	PreparedStatement ps=con.prepareStatement("select block from REGISTER where USER_ID =?");
	ps.setString(1,name);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		block=rs.getString(1);
		if("true".equals(block))
		{
			response.sendRedirect("blocked.jsp");
		}
		else
		{
			response.sendRedirect("Welcome.jsp");
		}
	}
}
catch(Exception e)
{
	System.out.println(e);
}
%>

</body>
</html>