<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
  <title>ONLINE BANKING</title>
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
          <h1><a href="index.html">ONLINE <span class="logo_colour">BANKING</span></a></h1>
          <h2>Simple. Contemporary. Website Template.</h2>
        </div>
      </div>
      <nav>
        <ul class="sf-menu" id="nav">
          <li><a href="Admin.jsp">Back</a></li>
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
	
	<div id="site_content">
      <div id="sidebar_container">
        <div class="sidebar">
          <h3>NOTICE</h3>
          <marquee direction='up' scrollamount="2">
          
          <h4>New Website Launched</h4>
          <h5>January 1st, 2014</h5>
          <p>2014 sees the redesign of our website. Take a look around and let us know what you think.<br /><a href="#">Read more</a></p>
          <h4>20% Discount</h4>
          <h5>December 1st, 2013</h5>
          <p>We are offering a 20% discount to all new customers.<br /><a href="#">Read more</a></p>
         </marquee>
         </div>
      </div>
       <div class="content">
        <h1>NEWS</h1>
        <p><span class="blueText"><h4><u><font color="red"> ${param.message}</font></u></span></p>
          <form name="Auth" id="Auth" action="submitnews.jsp" method="post" onsubmit="return validate(this)">
          <div class="form_settings">
            <p><h4><span>Post News </span></h4><textarea class="contact textarea" rows="5" cols="50" name="yours_message"></textarea></p>
            <p></p>
            <p><span class=form_settings><input class="submit" type="submit" name="login_submit" value="submit"/></span></p>
            </form>
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
  <script type="text/javascript" src="js2/jquery.js"></script>
  <script type="text/javascript" src="js2/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js2/jquery.sooperfish.js"></script>
  <script type="text/javascript" src="js2/jquery.kwicks-1.5.1.js"></script>
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
    