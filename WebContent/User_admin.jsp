<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
  <title>User-Admin</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style3.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js2/modernizr-1.5.min.js"></script>
</head>

<body>
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
               </div>
      </div>
      <div class="content">
      <p></p>
        <h4><span class=form_settings>Balance Enquiry Of User</span></h4>
        <form action="Enquiry.jsp" method="post"><span class="form_settings input"><input type="text" name="actno"></span>
        <span class=form_settings><input class="submit" type="submit" value="show"></span>
        </form>
        <p></p>
        <h4><span>Modify User Details</span></h4>
        <form action="Edituser.jsp" method="post"><span class="form_settings input"><input type="text" name="type"></span>
        <span class=form_settings><input class="submit" type="submit" value="show"></span></form> 
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
 