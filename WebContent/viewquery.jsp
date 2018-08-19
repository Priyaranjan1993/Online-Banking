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
		window.location="User_admin.jsp";
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
<caption>USER QUERIES</caption>
    
              <%
         		//String type=request.getParameter("type");
                //out.print("<table align='center'>");
         		//out.print("<tr><th>USER NAME</th><th>ACCOUNT NUMBER</th><th>NAME</th><th>EMAIL</th><th>ADDRESS</th><th>CITY</th><th>STATE</th><th>MOBILE NO</th><th>ACTION</th></tr>");


               try
       		{
       			Class.forName("oracle.jdbc.driver.OracleDriver");
       			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
       			PreparedStatement stmt=con.prepareStatement("select * from QUERY");
       		    //stmt.setString(1,name);
       			ResultSet rs=stmt.executeQuery();
      				%>
      				
      				<thead>
      				<tr>
      				<th>Query ID</th>
      				<th>Query</th>
      				<th>Sender's Mail ID</th>
      				<th>Status</th>
      				<th>Action</th>			
      		    	</tr>
      		    	</thead>
      		<% 
      				while(rs.next())
      				{
    	 
      					out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td><a href='relogin2.jsp'><input type='button' name='reply' value='REPLY'></a></td></tr>");       
      				}
      		rs.close();
    		stmt.close();
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