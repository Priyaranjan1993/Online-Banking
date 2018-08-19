<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE HTML>
<html>

<head>
  <title>Online Banking</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>

<body>
<%String name=(String)session.getAttribute("name");

if(name==null) {%><jsp:forward page="user_id.jsp"></jsp:forward><%} %>
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">ONLINE<span class="logo_colour"> BANKING</span></a></h1>
          <h2>Secure Internet Banking</h2>
        </div>
      </div>
      <nav>
         <ul class="sf-menu" id="nav">
                  <li><a href="Home2.jsp">Home</a></li>
        
         <li><a href="#">Customer Services</a>
            <ul>
              <li><a href="query.jsp">Queries</a>
              </li>
              <li><a href="Download.jsp">Downloads</a></li>
            </ul>
          </li>
          <li><a href="contact.jsp">Contact Us</a></li>
         
            <li><a href="logout.jsp">Logout</a>
          
          </li>
        </ul>
      </nav>
    </header>
    <div id="site_content">
      <ul id="images">
        <li><img src="images\1.jpg" width="600" height="300" alt="photo_one" /></li>
        <li><img src="images\2.jpg" width="600" height="300" alt="photo_two" /></li>
        <li><img src="images/3.jpg" width="600" height="300" alt="photo_three" /></li>
        <li><img src="images/4.jpg" width="600" height="300" alt="photo_four" /></li>
        <li><img src="images/5.jpg" width="600" height="300" alt="photo_five" /></li>
        <li><img src="images/6.jpg" width="600" height="300" alt="photo_photo_dark" /></li>
      </ul>
      <div class="content">
        <h1>Credit Card Profile</h1>
        <%
        String option =request.getParameter("name");
        if (option.equals("Bill"))
        {
        	String name1=(String)session.getAttribute("name");
        	String account="";
            int pin=Integer.parseInt("0");
            try{
    			Class.forName("oracle.jdbc.driver.OracleDriver");
    			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
    			PreparedStatement ps=con.prepareStatement("select accno from REGISTER where user_id=?");
    			ps.setString(1,name1);
    			ResultSet rs=ps.executeQuery();
    			if(rs.next())
    			{
    				 account=rs.getString(1);
    			}
    			rs.close();
    			ps.close();
				ps=con.prepareStatement("select * from credit_card where accno=?");
    			ps.setString(1,account);
				rs=ps.executeQuery();
				if(rs.next())
    			{
    				 
    			
        	%>
        	<div class="content">
         
       		<form action="ccbill.jsp" method="post"><span class="form_settings input">
       		<h4><span class="form_settings">CREDIT CARD NUMBER</span></h4>
       		<span class="form_settings input">
       		<input type="text" value="<%=rs.getString(7)%>" disabled="disabled"></span>
       		<input type="hidden" name="ccno" value="<%=rs.getString(7)%>">
          	<p style="padding-top: 15px"><span>&nbsp;</span>
          	<span class="form_settings1"><input class="submit1" type="submit" value="VIEW BILL DETAILS"></span>
        	</form>
          	</div>
          	<%
        	
    			}
            }
            catch(Exception e)
			{
				System.out.println(e);
			}
        }
            
        
        else if (option.equals("Pin"))
        {	            
        	String name1=(String)session.getAttribute("name");
        	String account="";
            int pin=Integer.parseInt("0");
            try{
    			Class.forName("oracle.jdbc.driver.OracleDriver");
    			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
    			PreparedStatement ps=con.prepareStatement("select accno from REGISTER where user_id=?");
    			ps.setString(1,name1);
    			ResultSet rs=ps.executeQuery();
    			if(rs.next())
    			{
    				 account=rs.getString(1);
    			}
    			rs.close();
    			ps.close();
				ps=con.prepareStatement("select * from credit_card where accno=?");
    			ps.setString(1,account);
				rs=ps.executeQuery();
				if(rs.next())
    			{
    				 
    			
        	%>
        	<div class="content">
         
       		<form action="pinchange.jsp" method="post"><span class="form_settings input">
       		<h4><span class="form_settings">CREDIT CARD NUMBER</span></h4>
       		<span class="form_settings input">
       		<input type="text" value="<%=rs.getString(7)%>" disabled="disabled"></span>
       		<input type="hidden" name="ccno" value="<%=rs.getString(7)%>">
          	<p style="padding-top: 15px"><span>&nbsp;</span>
          	<span class="form_settings1"><input class="submit1" type="submit" value="CHANGE PIN"></span>
        	</form>
          	</div>
          	<%
        	
    			}
            }
            catch(Exception e)
			{
				System.out.println(e);
			}
        }
        else if (option.equals("Block"))
        {
            String name1=(String)session.getAttribute("name");
            String account="";
            int pin=Integer.parseInt("0");
            try{
    			Class.forName("oracle.jdbc.driver.OracleDriver");
    			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
    			PreparedStatement ps=con.prepareStatement("select accno from REGISTER where user_id=?");
    			ps.setString(1,name1);
    			ResultSet rs=ps.executeQuery();
    			if(rs.next())
    			{
    				 account=rs.getString(1);
    			}
    			rs.close();
    			ps.close();
				ps=con.prepareStatement("select pin from credit_card where accno=?");
    			ps.setString(1,account);
				rs=ps.executeQuery();
				if(rs.next())
    			{
    				 
    			
            %>
          	<div class="content">
         	<h4><span class="form_settings">PIN NUMBER</span></h4>
       		<form action="blockcc.jsp" method="post"><span class="form_settings input">
       		<input type="text" value="<%=rs.getString(1)%>" disabled="disabled"></span>
       		<input type="hidden" name="pinno" value="<%=rs.getString(1)%>">
          	<p style="padding-top: 15px"><span>&nbsp;</span>
          	<span class="form_settings"><input class="submit" type="submit" value="BLOCK"></span>
        	</form>
          	</div>
          	<% 
    			}
            }
            catch(Exception e)
			{
				System.out.println(e);
			}
            
        }
        
        %>
      </div>
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
