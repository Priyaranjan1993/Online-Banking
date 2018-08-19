<!DOCTYPE HTML>
<html>

<head>
  <title>Online Banking</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="Authenticate3.js"></script>
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
          <li><a href="index.jsp">Home</a></li>
          <li><a href="#">Online Services</a>
          <ul>
                  <li><a href="#">Credit Card</a></li>
                  <li><a href="#">Bank Account</a></li>
           </ul>
          <li class="selected"><a href="Login.jsp">Login</a>
          <ul>
          <li><a href="Login.jsp">New User</a></li>
          <li><a href="user_id.jsp">User ID/PIN</a></li>
          </ul>
          </li>
          <li><a href="#">Customer Services</a>
            <ul>
              <li><a href="#">FAQs</a></li>
              <li><a href="#">Queries</a>
                <ul>
                  <li><a href="#">Credit Card Related</a></li>
                  <li><a href="#">Account Related</a></li>
                  <li><a href="#">Downloading Related</a></li>
                  <li><a href="#">Login Related</a></li>
                </ul>
              </li>
              <li><a href="#">24*7 HelpLine</a></li>
              <li><a href="#">Downloads</a></li>
            </ul>
          </li>
          <li><a href="contact.jsp">Contact Us</a></li>
          <li><a href="#">Apply</a>
          <ul>
                  <li><a href="#">Credit Card</a></li>
                  <li><a href="#">Bank Account</a></li>
           </ul>
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
          <h4>New Website Launched</h4>
          <h5>January 1st, 2014</h5>
          <p>2014 sees the redesign of our website. Take a look around and let us know what you think.<br /><a href="#">Read more</a></p>
        </div>
        <div class="sidebar">
          <h3>Useful Links</h3>
          <ul>
            <li><a href="#">First Link</a></li>
            <li><a href="#">Another Link</a></li>
            <li><a href="#">And Another</a></li>
            <li><a href="#">Last One</a></li>
          </ul>
        </div>
      </div>
      <div class="content">
        <h1>REGISTRAION FORM</h1>
           <h2>Please Enter Your Details</h2>
        <%
          	out.print("<div class='form_settings'>");
        	out.print("<form name='Auth2' id= 'Auth2' action='Welcome.jsp' method='get' onsubmit='return validate()'>");
            out.print("<p><span>First Name</span><input type='text' name='userid' value='' /></p>");
            //out.print("<p><span>Middle Name</span><input type='text' name='name2' value='' /></p>");
            //out.print("<p><span>Last Name</span><input type='text' name='name3' value='' /></p>");
            //out.print("<p><span>Date Of Birth</span><input type='date' name='name4' value='' /></p>");
            //out.print("<p><span>Address</span><textarea rows='8' cols='50' name='name5'></textarea></p>");
            out.print("<p><span>Email</span><input type='text' name='name6' value='' /></p>");
            //out.print("<p><span>Alernate Email</span><input type='text' name='name7' value='' /></p>");
            //out.print("<p><span>Phone number</span><input type='text' name='name8' value='' /></p>");
            //out.print("<p><span>City</span><input type='text' name='name9' value='' /></p>");
            //out.print("<p><span>State</span><input type='text' name='name10' value='' /></p>");
            //out.print("<p><span>Mobile Number</span><input type='number' name='name11' value='+91'size ='30' /></p>");
            //out.print("<p><span>Gender</span><input type='text' name='name12' value='' /></p>");
            //out.print("<p><span>Bank Branch</span><input type='text' name='name13' value='' /></p>");
            //out.print("<p><span>Bank State</span><input type='text' name='name14' value='' /></p>");
            //out.print("<p style='padding-top: 15px'><span>&nbsp;</span>");
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
