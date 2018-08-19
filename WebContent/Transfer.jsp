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
       String name=(String)session.getAttribute("name");
      try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
			PreparedStatement ps=con.prepareStatement("select accno from REGISTER where user_id=?");
			ps.setString(1,name);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
      %>
        <h1>TRANSFER</h1>
        <h3><font color="orange"><u>FUND TRANSFER</u></font></h3><h3><font color="orange">${param.message}</font></h3>
          <form name="Auth" id="Auth" action="ftransfer" method="post" onsubmit="return validate(this)">
          <div class="form_settings">
            <p><span> User Account Number</span><input type="text"  value="<%=rs.getString(1)%>" disabled="disabled">
            <input type="hidden" name="sender" value="<%=rs.getString(1)%>"></p>
            <p><span>Receiver Account Number</span><input type="text" name="receiver"/></p>
            <p><span>Amount</span><input type="text" name="amount"/></p>
            <p style="padding-top: 15px"><span>&nbsp;</span>
            <p><input class="submit" type="submit" name="login_submit" value="submit"/></p>
            </form>
            </div>
            </form>
             <%
			}
      }
			catch(Exception e)
			{
				System.out.println(e);
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
    