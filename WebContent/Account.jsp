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
        <li><img src="images/1.jpg" width="600" height="300" alt="photo_one" /></li>
        <li><img src="images/2.jpg" width="600" height="300" alt="photo_two" /></li>
        <li><img src="images/3.jpg" width="600" height="300" alt="photo_three" /></li>
        <li><img src="images/4.jpg" width="600" height="300" alt="photo_four" /></li>
        <li><img src="images/5.jpg" width="600" height="300" alt="photo_five" /></li>
        <li><img src="images/6.jpg" width="600" height="300" alt="photo_photo_dark" /></li>
      </ul>

      <div class="content">
        <h1>Banking</h1>
        <%
        String option =request.getParameter("name");
        if (option.equals("Current"))
        {
        	out.print("<div class='form_set'>");
          	out.print("<form name='Auth3' id='Auth3' action='print2.jsp' method='get' onsubmit='return validate(this)'>");
            out.print("<a href ='#' <h4>Print Account statement for SPECIFIC PERIOD</h4></a><p><h4>From  <input type='date' name='date1'>  To <input type='date' name='date2'></p>");
            out.print("<input class='submit' type='submit' name='submit1' value='submit'/></p>");		
            out.print("</form>");
            out.print("</div>");		


        }
        else if (option.equals("Saving"))
        {
          	out.print("<div class='form_set'>");
          	out.print("<form name='Auth3' id='Auth3' action='print1.jsp' method='get' onsubmit='return validate(this)'>");
            out.print("<a href ='#' <h4>Print Account statement for SPECIFIC PERIOD</h4></a><p><h4>From  <input type='date' name='date1'>  To <input type='date' name='date2'></p>");
            out.print("<input class='submit' type='submit' name='submit1' value='submit'/></p>");		
            out.print("<hr>");
            out.print("<p><span><b><h4>To Transfer funds to any account...please </h4></b> </span><a href='Transfer.jsp'><h4>Click Here</h4></a></p>");		
            out.print("</form>");
            out.print("</div>");   
        }
        else if (option.equals("Recurring"))
        {
        	out.print("<div class='form_set'>");
          	out.print("<form name='Auth3' id='Auth3' action='print3.jsp' method='get' onsubmit='return validate(this)'>");
            out.print("<a href ='#' <h4>Print Account statement for SPECIFIC PERIOD</h4></a><p><h4>From  <input type='date' name='date1'>  To <input type='date' name='date2'></p>");
            out.print("<input class='submit' type='submit' name='submit1' value='submit'/></p>");		
            out.print("</form>");
            out.print("</div>");
            
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
