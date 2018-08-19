<%@ page language="java" import="java.sql.*"    contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function backing() {
		window.location="Welcome.jsp";
	}
</script>
</head>
<body>
<%String name=(String)session.getAttribute("name");

if(name==null) {%><jsp:forward page="user_id.jsp"></jsp:forward><%} %>
<center><h4>UR TRANSACION DETAILS</h4></center>
<hr>
<hr>
<table align="center">
<%
	String names=(String)session.getAttribute("name");
	String accno="";
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
		PreparedStatement stmt1=con.prepareStatement("select * from savings where name=?");
		stmt1.setString(1,name);
		ResultSet rs=stmt1.executeQuery();
		if(rs.next())
		accno=rs.getString(1);
		rs.close();
		stmt1.close();
		PreparedStatement stmt2=con.prepareStatement("select * from reports where accno=?");
		stmt2.setString(1,accno);
		rs=stmt2.executeQuery();
		out.print("<tr><th>TRANSACTION NO</th><th>ACCNO</th><th>TR.DATE</th><th>TYPE</th><th>RECEIVER</th><th>AMOUNT</th></tr>");
		while(rs.next())
		{
			out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr>");
		}
		rs.close();
		stmt2.close();
		con.close();
		
	}
	catch(Exception ee)
	{
		ee.printStackTrace();
	}
%>
</table>
<center><button onclick="window.print()">print</button><button onclick="backing()">back</button></center>
</body>
</html>