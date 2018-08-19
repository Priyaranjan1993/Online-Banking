<%@ page language="java" import="java.sql.*,java.util.*,java.text.SimpleDateFormat,java.text.DateFormat,java.util.Date"  contentType="text/html; charset=ISO-8859-1"
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
          <li><a href="#">Customer Services</a>
            <ul>
              <li><a href="query.jsp">Queries</a>
              </li>
              <li><a href="Download.jsp">Downloads</a></li>
            </ul>
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
      <div id="sidebar_container">
        <div class="sidebar">
          <h3>Latest News</h3>
          <marquee direction='up' scrollamount="2">
          <%
        try
      	{
      		Class.forName("oracle.jdbc.driver.OracleDriver");
      		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
      		PreparedStatement stmt1=con.prepareStatement("select * from news");
      		ResultSet rs=stmt1.executeQuery();
      		while(rs.next())
      		{
      			out.print(rs.getString(2)+"<img src='images/new.gif' width='30' height='15'><br><br>");
      		}
      		rs.close();
      		stmt1.close();
      	}
          catch(Exception ee)
          {
        	  ee.printStackTrace();
          }
          %>
          </marquee>
          </div>
        <div class="sidebar">
          <h3>Useful Links</h3>
          <ul>
           <li><a href="#">NBI MUTUAL FUND</a></li>
            <li><a href="#">NBICAP SECURITIES</a></li>
            <li><a href="#">NBI LIFE INSURANCE</a></li>
            <li><a href="#">NBI GENERAL INSURANCE</a></li>
          </ul>
        </div>
      </div>
      <div class="content">
        <h1>CONTACT</h1>
       <%-- <p>Online Internet Banking Contact Details<a href="http://localhost:9090/online_banking/contact.jsp"></a>.</p> --%>
        <form id="contact" action="#" method="post">
          <div class="form_settings">
            <h3>For further assistance please contact on this number - +919040913699</h3>
             </div>
        </form>
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
