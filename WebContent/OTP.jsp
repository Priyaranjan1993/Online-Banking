<!DOCTYPE HTML>
<html>

<head>
  <title>Online Banking</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/Authenticate4.js"></script>
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
          <li ><a href="index.jsp">Home</a></li>
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
        <h1>User OTP</h1>
        <p><b>Your Request have been processed.... Please wait for your ONE-TIME-PASSWORD</b></p>
        <p>If Receieved please enter the following details</p>
        <form name="Auth12" id="Auth12" action="OTPCheck" method="post" onsubmit="return validate(this)">
          <div class="form_settings">
          	<h4><font color="orange"> <u>${param.message}</u></font></h4>
            <p><span>OTP ID--</span><input type="text" name="userid" value="" /></p>
            <p><span>ONE TIME PASSWORD--</span><input type="text" name="passwd" value="" /></p>
            <p><input class="submit" type="submit" name="login_submit" value="submit"/></p>
            </div>
            </form>
        </div>
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
  </div>
</body>
</html>