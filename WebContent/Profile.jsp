<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1" import="java.sql.*"
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
          <h1><a href="index.jsp">ONLINE<span class="logo_colour"> BANKING</span></a></h1>
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
        
        <%
        String option =request.getParameter("name1");
        String name1=(String)session.getAttribute("name");
        String accnt="";
        String block="";

        try{
        	Class.forName("oracle.jdbc.driver.OracleDriver");
        	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
        	PreparedStatement ps=con.prepareStatement("select accno from register where  user_id=?");
        	ps.setString(1,name1);
        	ResultSet rs=ps.executeQuery();
        	if(rs.next())
        	accnt=rs.getString(1);
        	rs.close();
        	ps.close();
        	String query="select block from credit_card where accno=?";
        	ps=con.prepareStatement(query);
        	ps.setString(1,accnt);
        	rs=ps.executeQuery();
        	if(rs.next())
        		block=rs.getString(1);
        	rs.close();
        	ps.close();

		}
		catch(Exception e)
		{
			System.out.println(e);
		}
        if (option.equals("Banking"))
        {
          	//out.print("<div class='form_settings'>");
          	out.print("<h1>BANKING PROFILE</h1>");
         
          	out.print("<form name='Auth2' id='Auth2' action='Account.jsp' method='post' onsubmit='return validate(this)'>");
            out.print("<a href='Checkbook.jsp'> <h4>Order a Checkbook</h4></a>");
            out.print("<p><h4>Please select the account type you want to see.</h4></p>");

            //out.print("<form action='cc.jsp' method='get'>");
            out.print("<div class='form_settings'>");
            //out.print("<p><span><h2><u>Options</u></h2></span>");
            out.print("<select id='id' name='name'>");
            out.print("<option value='Current'>Current Account</option>");
            out.print("<option value='Saving'>Savings Account</option></p>");
            out.print("<option value='Recurring'>Recurrings Account</option></select></p>");
            out.print("<p style='padding-top: 15px'><span>&nbsp;</span>");
            out.print("<input class='submit' type='submit' name='submit' value='submit'/></p>");
            out.print("</div>");
            out.print("</form>");
            
        }
        else if (option.equals("Credit Card") && "false".equals(block))
        {
        	out.print("<div class='form_settings'>");
        	out.print("<h1>CREDIT CARD PROFILE</h1>");
          	out.print("<form name='Auth4' id='Auth4' action='Account2.jsp' method='post' onsubmit='return validate(this)'>");
            out.print("<p><span><h2><u>Options</u></h2></span>");
            out.print("<p><h4>Please select your requirment</h4></p>");

            out.print("<select id='id' name='name'>");
            
            out.print("<option value='Bill'>View Bill Details</option>");
            out.print("<option value='Pin'>Request for PIN Change</option></p>");
            out.print("<option value='Block'>Report for Stolen card and BLOCK</option></select></p>");
            out.print("<p style='padding-top: 15px'><span>&nbsp;</span>");
            out.print("<input class='submit' type='submit' name='submit' value='submit'/></p>");
            out.print("</div>");
            out.print("</form>");
        }
        else if (option.equals("Credit Card") && "true".equals(block))
        {
			response.sendRedirect("blockcc2.jsp");
        }
        %>
      </div>
    </div>
   <!-- <footer>
      <p>Copyright &copy; NATIONAL BANK OF INDIA | <a href="kiit.ac.in">  Design from KIIT CS TEAM</a></p>
    </footer> -->
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
