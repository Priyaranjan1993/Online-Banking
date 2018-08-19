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
String email=request.getParameter("yours_email");
String msg=request.getParameter("yours_message");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
    String query = "insert into QUERY (QID,UQUERY,UMAIL,QSTAT) values(BANKSQ.nextval,?,?,1)";
	PreparedStatement pstmt = con.prepareStatement(query);
	pstmt.setString(1,msg);
	pstmt.setString(2,email);
	pstmt.executeUpdate();
	response.sendRedirect("query.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}


%>

</body>
</html>