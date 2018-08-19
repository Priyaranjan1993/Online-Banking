<%@ page language="java" import="java.sql.*"    contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
  <title>Transaction</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style3.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js2/modernizr-1.5.min.js"></script>
</head>

<body>
<%String name=(String)session.getAttribute("name");

if(name==null) {%><jsp:forward page="user_id.jsp"></jsp:forward><%} %>
  <div id="main">
    
    <div id="top_split">	
	
	<header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">ONLINE<span class="logo_colour">BANKING</span></a></h1>
          <h2>Simple. Contemporary. Website Template.</h2>
        </div>
      </div>
      <nav>
        <ul class="sf-menu" id="nav">
          <li><a href="Admin.jsp">Home</a></li>
          <li><a href="relogin.jsp">Back</a></li>
          <li><a href="logout.jsp">Logout</a>
          
        </ul>
      </nav>

      <ul id="images">
        <li><img src="images2/1.jpg" width="600" height="300" alt="gallery_buildings_one" /></li>
        <li><img src="images2/2.jpg" width="600" height="300" alt="gallery_buildings_two" /></li>
        <li><img src="images2/3.jpg" width="600" height="300" alt="gallery_buildings_three" /></li>
        <li><img src="images2/4.jpg" width="600" height="300" alt="gallery_buildings_four" /></li>
        <li><img src="images2/5.jpg" width="600" height="300" alt="gallery_buildings_five" /></li>
        <li><img src="images2/6.jpg" width="600" height="300" alt="gallery_buildings_six" /></li>
      </ul>	  
	
	</header>

	</div>  
       <div style="height: 500px;width: 1000px;" >
       <%
       		String rename=request.getParameter("username");
       		out.print("<table align='center'>");
       		//out.print("<tr><th>ACCOUNT NO</th><th>Transaction Number</th><th>Transaction Type</th><th>Transaction Amount</th><th>Transaction Date</th></tr>");
       	
       		try
       		{
       			Class.forName("oracle.jdbc.driver.OracleDriver");
       			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
       			PreparedStatement stmt=con.prepareStatement("select * from REGISTER where USER_ID=?");
       		    stmt.setString(1,rename);
       			ResultSet rs=stmt.executeQuery();
       			while(rs.next())
       			{
       		%>
       		<form action="update.jsp" method="post" onsubmit="return validate()">
       		<div class="form_settings">
       		<p><h4><span>Account Number</span></h4><input type="text" value="<%=rs.getString("ACCNO")%>" disabled="disabled" /></p>
       		<input type="hidden" name="accno" value="<%=rs.getString("ACCNO")%>">
       		<p><h4><span>Name</span></h4><input type="text" name="name" value="<%=rs.getString("NAME")%>" /></p>
			<p><h4><span>Email</span></h4><input type="text" name="Email" value="<%=rs.getString("EMAIL")%>" /></p>
			<p><h4><span>Address</span></h4><input type="text" name="Address" value="<%=rs.getString("ADDRESS")%>" /></p>
			<p><h4><span>City</span></h4><input type="text" name="city" value="<%=rs.getString("CITY")%>" /></p>
			<p><h4><span>State</span></h4><input type="text" name="state" value="<%=rs.getString("STATE")%>" /></p>
			<p><h4><span>Mobile No</span></h4><input type="text" name="Mobile" value="<%=rs.getString("MOB_PHONE")%>" /></p>
			<p><span class=form_settings><input class="submit" type="submit" name="submit" value="submit"/></span></p>
			
			                   		
       		</div>
       		</form>
       		
       		<% 	 
       			}
       		}
       		catch(Exception ee)
       		{
   				ee.printStackTrace();    			
       		}
       		out.print("</table>");
       %>
       </div>
    <footer>
      <p>Copyright &copy; NATIONAL BANK OF INDIA | <a href="kiit.ac.in">  Design from KIIT CS TEAM</a></p>
    </footer>
  </div>
  <p>&nbsp;</p>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
  <script type="text/javascript" src="js/jquery.kwicks-1.5.1.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('#images').kwicks({
        max : 600,
        spacing : 2
      });
      $('ul.sf-menu').sooperfish();
    });
  </script>
</body>
</html>
