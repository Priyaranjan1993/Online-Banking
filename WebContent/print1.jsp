<%@ page language="java" import="java.sql.*"    contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Beautiful design tables in HTML in the style of a zebra.</title>
<link rel="stylesheet" href="css/style2.css" type="text/css">

<script type="text/javascript">
	function backing() {
		window.location="Welcome.jsp";
	}
</script>
<style type="text/css" rel="stylesheet"> 
        html, body{
	padding:0;
	margin:0;
	position:relative;
	background:url(images/body.jpg);
	background-repeat:repeat;
	color:#fff;
	letter-spacing:1px;
	font-family:Georgia, "Times New Roman", Times, serif;
}

.zebra caption{
	font-size:20px;
	font-weight:normal;
	background:url(images/zebratable.png);
	background-repeat:no-repeat;
	background-position: 130px center;
	padding-top: 20px;
	height:50px;
	}
	.form_settings input, .form_settings textarea { 
  padding: 5px; 
  width: 299px; 
  font: 100% Segoe UI Light; 
  border: none; 
  background: #FFF; 
  color: #47433F;
  border-radius: 7px 7px 7px 7px;
  -moz-border-radius: 7px 7px 7px 7px;
  -webkit-border: 7px 7px 7px 7px;  
}
  
.form_settings .submit { 
  font: 140% 'Yanone Kaffeesatz', Segoe UI Light, sans-serif; 
  border: 0; 
  width: 99px; 
  margin: 0 0 0 212px; 
  height: 33px;
  padding: 2px 0 3px 0;
  cursor: pointer; 
  background: #1EC9F4; 
  -webkit-border-radius: .5em .5em .5em .5em ; 
  -moz-border-radius: .5em .5em .5em .5em ;
  border-radius: .5em .5em .5em .5em ;
  -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
  -moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
  box-shadow: 0 1px 2px rgba(0,0,0,.2);  
  color: #FFF;
  border: solid 1px #0D8AA9;
  background: #46C4DD;
  text-shadow: 1px 1px #178497;
}
        </style>
</head>
<body>
<%String name=(String)session.getAttribute("name");

if(name==null) {%><jsp:forward page="user_id.jsp"></jsp:forward><%} %>
<div id="container">   
<table class="zebra">
<caption>Transaction Details</caption>

<%
	String names=(String)session.getAttribute("name");
	String sd=request.getParameter("date1");
	String ed=request.getParameter("date2");
	//out.print(sd+ed);
	java.sql.Date dt1=Date.valueOf(sd);
	java.sql.Date dt2=Date.valueOf(ed);
	String accno="";
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
		PreparedStatement stmt1=con.prepareStatement("select * from savings where  name=?");
		stmt1.setString(1,name);
		ResultSet rs=stmt1.executeQuery();
		if(rs.next())
		accno=rs.getString(1);
		rs.close();
		stmt1.close();
		PreparedStatement stmt2=con.prepareStatement("select * from reports where tdate between ? and ? and accno=?");
		stmt2.setDate(1,dt1);
		stmt2.setDate(2,dt2);
		stmt2.setString(3,accno);
		rs=stmt2.executeQuery();
%>
		
		<thead>
		<tr>
		<th>Transaction No.</th>
		<th>Account No.</th>
		<th>Transaction Date</th>
		<th>Type</th>
		<th>Receiver Account No.</th>
		<th>Amount</th>
    	</tr>
    	</thead>
<% 
		//out.print("<tr><th>TRANSACTION NO</th><th>ACCNO</th><th>TR.DATE</th><th>TYPE</th><th>RECEIVER</th><th>AMOUNT</th></tr>");
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
</div>
<div class="form_settings">
<center>
            <p style="padding-top: 15px"><span>&nbsp;</span>
            <p style="padding-top: 15px"><span>&nbsp;</span>

<button onclick="window.print()" class="submit">PRINT</button>
<button onclick="backing()" class="submit">BACK</button>
</center>
</div>
</body>
</html>