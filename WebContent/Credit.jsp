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
          <h1><a href="index.html">ONLINE<span class="logo_colour"> BANKING</span></a></h1>
          <h2>Secure Internet Banking</h2>
        </div>
      </div>
      <nav>
        <ul class="sf-menu" id="nav">
          <li><a href="index.jsp">Home</a></li>
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
        <h1>CREDIT CARD FORM</h1>
        <h2>REGISTRATION</h2>
        <%
          	out.print("<div class='form_settings'>");
        	out.print("<form action='Welcome.jsp' method='get'>");
            out.print("<p><span>First Name</span><input type='text' name='userid' value='' /></p>");
            out.print("<p><span>Middle Name</span><input type='text' name='name2' value='' /></p>");
            out.print("<p><span>Last Name</span><input type='text' name='name3' value='' /></p>");
            out.print("<p><span>Date Of Birth</span><input type='date' name='name4' value='' /></p>");
            out.print("<p><span>Address</span><textarea rows='8' cols='50' name='name5'></textarea></p>");
            out.print("<p><span>Email</span><input type='text' name='name6' value='' /></p>");
            out.print("<p><span>Alernate Email</span><input type='text' name='name7' value='' /></p>");
            out.print("<p><span>Phone number</span><input type='text' name='name8' value='' /></p>");
            out.print("<p><span>City</span><input type='text' name='name9' value='' /></p>");
            out.print("<p><span>State</span><input type='text' name='name10' value='' /></p>");
            out.print("<p><span>Mobile Number</span><input type='number' name='name11' value='+91'size ='30' /></p>");
            out.print("<p><span>Gender</span><input type='text' name='name12' value='' /></p>");
            out.print("<p><span>Bank Branch</span><input type='text' name='name13' value='' /></p>");
            out.print("<p><span>Bank State</span><input type='text' name='name14' value='' /></p>");
            out.print("<p style='padding-top: 15px'><span>&nbsp;</span>");
            out.print("<input class='submit' type='submit' name='submit' value='submit'/></p>");
            out.print("</div>");
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
