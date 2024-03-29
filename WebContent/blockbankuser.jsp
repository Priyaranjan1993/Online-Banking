<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<title>Insert title here</title>
</head>
<style type="text/css" rel="stylesheet"> 
@font-face { 
  font-family: Yanone Kaffeesatz; 
    src: url('../fonts/YanoneKaffeesatz-Regular.eot'); 
    src: local("Yanone Kaffeesatz"), url('../fonts/YanoneKaffeesatz-Regular.ttf'); 
} 

@font-face { 
  font-family: News Cycle; 
    src: url('../fonts/NewsCycle-Regular.eot'); 
    src: local("News Cycle"), url('../fonts/NewsCycle-Regular.ttf'); 
} 

html { 
  height: 100%;
}

* { 
  margin: 0;
  padding: 0;
}

/* tell the browser to render HTML 5 elements as block */
article, aside, figure, footer, header, hgroup, nav, section { 
  display:block;
}

body { 
  font: normal .80em Segoe UI Light, sans-serif;
  background: #222;
  color: #AAA;
}

p { 
  padding: 0 0 20px 0;
  line-height: 1.7em;
}

img { 
  border: 0;
}

h1, h2, h3, h4, h5, h6 { 
  color: #362C20;
  letter-spacing: 0em;
  padding: 0 0 5px 0;
}

h1, h2, h3 { 
  font: normal 140% Segoe UI Light, sans-serif;
  margin: 0 0 15px 0;
  padding: 15px 0 5px 0;
  color: #FFF;
}

h2 { 
  font-size: 160%;
  padding: 9px 0 5px 0;
  color: #FFF;
}

h3 { 
  font-size: 140%;
  padding: 5px 0 0 0;
}

h4, h6 { 
  color: #FFF;
  padding: 0 0 5px 0;
  font: normal 150% 'Yanone kaffeesatz', Segoe UI Light, sans-serif;
}

h5, h6 { 
  color: #BBB;
  font: italic 95% Segoe UI Light, sans-serif;
  letter-spacing: normal;
  padding: 0 0 15px 0;
}

a, a:hover { 
  outline: none;
  text-decoration: underline;
  color: #09D4FF;
}

a:hover { 
  text-decoration: none;
}

blockquote { 
  margin: 20px 0; 
  padding: 10px 20px 0 20px;
  border: 1px solid #E5E5DB;
  background: #FFF;
}

ul { 
  margin: 2px 0 22px 17px;
}

ul li { 
  list-style-type: circle;
  margin: 0 0 6px 0; 
  padding: 0 0 4px 5px;
  line-height: 1.5em;
}

ol { 
  margin: 8px 0 22px 20px;
}

ol li { 
  margin: 0 0 11px 0;
}

.left { 
  float: left;
  width: auto;
  margin-right: 10px;
}

.right { 
  float: right; 
  width: auto;
  margin-left: 10px;
}

.center { 
  display: block;
  text-align: center;
  margin: 20px auto;
}

#main, nav, #container, #logo, #site_content, footer { 
  margin-left: auto; 
  margin-right: auto;
}

#main {
  margin: 25px auto;
  width: 930px;
  background: transparent;
  padding-bottom: 30px;
}


header { 
  background: transparent;
  height: 125px;
}

#logo { 
  width: 300px;
  height: 125px;
  background: transparent;
  color: #FFF;
  padding: 0;
  float: left;
}

#logo h1, #logo h2 { 
  font: normal 320% 'News Cycle', Segoe UI Light, sans-serif;
  border-bottom: 0;
  text-transform: none;
  margin: 0;
}

#logo_text h1, #logo_text h1 a, #logo_text h1 a:hover { 
  padding: 20px 0 0 0;
  color: #FFF;
  text-decoration: none;
}

#logo_text h1 a .logo_colour { 
  color: #09D4FF;
}

#logo_text a:hover .logo_colour { 
  color: #FFF;
}

#logo_text h2 { 
  font-size: 140%;
  padding: 0 0 0 0;
  color: #FFF;
}

nav { 
  height: 44px;
  width: 600px;
  float: right;
  margin: 75px auto 0 auto;
  color: #222;
} 

#site_content { 
  width: 930px;
  overflow: hidden;
  margin: 0px auto 0 auto;
  padding: 15px 0 15px 0;
} 

#sidebar_container { 
  float: right;
  width: 224px;
  margin: 25px 0 0 0;
}

.sidebar { 
  float: right;
  width: 200px;
  margin: 0 0 17px 0;
  padding: 0 15px 5px 13px;
}
  
.sidebar h3, .content h1 { 
  padding: 0 15px 20px 0;
  font: 270% 'Yanone Kaffeesatz', Segoe UI Light, sans-serif;
  text-shadow:  #000 1px 1px;
  margin: 0 1px;
  color: #F67400;
  text-transform: uppercase;
}

.sidebar h3 { 
  font: 300% 'Yanone Kaffeesatz', Segoe UI Light, sans-serif;
  padding: 0 15px 5px 0;
}

.sidebar ul { 
  margin: 0 0 15px 0;
} 

.sidebar li a, .sidebar li a:hover { 
  color: #AAA;
  text-decoration: none;
} 

.sidebar li a:hover { 
  text-decoration: underline;
} 

.sidebar_item, .content_item { 
  padding: 15px 0;
}

.content { 
  text-align: left;
  width: 650px;
  margin: 0 0 15px 0;
  float: left;
  font-size: 120%;
  padding: 25px 0 0 0;
}
  
.content ul { 
  margin: 2px 0 22px 0px;
}

.content ul li, .sidebar ul li { 
  list-style-type: none;
  background: url(../images/bullet.png) no-repeat;
  margin: 0 0 0 0; 
  padding: 0 0 4px 28px;
  line-height: 1.5em;
}

footer { 
  width: 930px;
  font: 170% 'News Cycle', Segoe UI Light, sans-serif;
  height: 30px;
  padding: 5px 0 20px 0;
  text-align: center;
  border-top: 1px solid #444;
  background: #dddddd;
}

footer p { 
  line-height: 1.7em;
  padding: 0 0 10px 0;
  color: #C41E1E;
  background-image: url(images/success_w.gif);
  background-repeat: no-repeat;
  
}


footer a { 
  color: #FFF;
  text-decoration: none;
}

footer a:hover { 
  color: #FFF;
  text-shadow: none;
  text-decoration: underline;
}

.form_settings { 
  margin: 15px 0 0 0;
}

.form_settings p { 
  padding: 0 0 4px 0;
}

.form_settings span { 
  float: left; 
  width: 200px; 
  text-align: left;
}
  
.form_settings input, .form_settings textarea { 
  padding: 5px; 
  width: 299px; 
  font: 100% Segoe UI Light; 
  border: none; 
  background: #FFF; 
  color: #47433F;
  border-radius: 7px 7px 7px 7px;
  -moz-border-radius: 7px 7px 7px 7px;
  -webkit-border: 7px 7px 7px 7px;  
}
  
.form_settings .submit { 
  font: 140% 'Yanone Kaffeesatz', Segoe UI Light, sans-serif; 
  border: 0; 
  width: 99px; 
  margin: 0 0 0 212px; 
  height: 33px;
  padding: 2px 0 3px 0;
  cursor: pointer; 
  background: #1EC9F4; 
  -webkit-border-radius: .5em .5em .5em .5em ; 
  -moz-border-radius: .5em .5em .5em .5em ;
  border-radius: .5em .5em .5em .5em ;
  -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
  -moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
  box-shadow: 0 1px 2px rgba(0,0,0,.2);  
  color: #FFF;
  border: solid 1px #0D8AA9;
  background: #46C4DD;
  text-shadow: 1px 1px #178497;
}

.form_settings textarea, .form_settings select { 
  font: 100% Segoe UI Light; 
  width: 299px;
}

.form_settings select { 
  width: 310px;
}

.form_settings .checkbox { 
  margin: 4px 0; 
  padding: 0; 
  width: 14px;
  border: 0;
  background: none;
}

.separator { 
  width: 100%;
  height: 0;
  border-top: 1px solid #D9D5CF;
  border-bottom: 1px solid #FFF;
  margin: 0 0 20px 0;
}
  
table { 
  margin: 10px 0 30px 0;
}

table tr th, table tr td { 
  background: #70D4E6;
  color: #FFF;
  padding: 7px 4px;
  text-align: left;
}
  
table tr td { 
  background: #D3F2F7;
  color: #47433F;
  border-top: 1px solid #FFF;
}






/**
Stylesheet for SooperFish by www.SooperThemes.com
Author: Jurriaan Roelofs
**/

/* Configuration of menu width */
html body ul.sf-menu ul,html body ul.sf-menu ul li { 
  width: 200px;
}

html body ul.sf-menu ul ul { 
  margin: 0 0 0 200px;
}

/* Framework for proper showing/hiding/positioning */
ul.sf-menu,ul.sf-menu * { 
  margin: 0;
  padding: 0;
}

ul.sf-menu { 
  display: block;
  position: relative;
}
  
ul.sf-menu li { 
  display: block;
  list-style: none;
  float: left;
  position: relative;
}
  
ul.sf-menu li:hover { 
  visibility: inherit; /* fixes IE7 'sticky bug' */ 
}

ul.sf-menu a { 
  display: block;
  position: relative;
}
  
ul.sf-menu ul { 
  position: absolute;
  left: 0;
  width: 150px; 
  top: auto;
  left: -999999px;
}
  
ul.sf-menu ul a { 
  zoom: 1; /* IE6/7 fix */ 
}

ul.sf-menu ul li { 
  float: left; /* Must always be floated otherwise there will be a rogue 1px margin-bottom in IE6/7 */
  width: 150px;
}
  
ul.sf-menu ul ul { 
  top: 0;
  margin: 0 0 0 150px;
}

ul.sf-menu li:hover ul,ul.sf-menu li:focus ul,ul.sf-menu li.sf-hover ul, 
ul.sf-menu ul li:hover ul,ul.sf-menu ul li:focus ul,ul.sf-menu ul li.sf-hover ul,
ul.sf-menu ul ul li:hover ul,ul.sf-menu ul ul li:focus ul,ul.sf-menu ul ul li.sf-hover ul,
ul.sf-menu ul ul ul li:hover ul,ul.sf-menu ul ul ul li:focus ul,ul.sf-menu ul ul ul li.sf-hover ul { 
  left: auto;
}
  
ul.sf-menu li:hover ul ul,ul.sf-menu li:focus ul ul,ul.sf-menu li.sf-hover ul ul,
ul.sf-menu ul li:hover ul ul,ul.sf-menu ul li:focus ul ul,ul.sf-menu ul li.sf-hover ul ul,
ul.sf-menu ul ul li:hover ul ul,ul.sf-menu ul ul li:focus ul ul,ul.sf-menu ul ul li.sf-hover ul ul,
ul.sf-menu ul ul ul li:hover ul ul,ul.sf-menu ul ul ul li:focus ul ul,ul.sf-menu ul ul ul li.sf-hover ul ul { 
  left: -999999px;
}

/* Theming the menu */
ul#nav { 
  float: right;
}

ul#nav ul { 
  background: #09D4FF;
  margin-top: 5px;
  padding-bottom: 15px;
}

ul#nav li a { 
  padding:7px 0px 6px 15px;
  font: 170% 'Yanone Kaffeesatz', Segoe UI Light, sans-serif;
  text-shadow: 1px 1px #000;
  text-decoration: none;
  color: #FFF;
  margin-right: 2px;
}

ul#nav li a:hover, ul#nav li a:focus, ul#nav li.selected a, ul#nav li.selected a:hover, ul#nav li.selected a:focus { 
  color: #09D4FF;
  text-shadow: none;
}

ul#nav ul li a { 
  color: #FFF;
  text-shadow: none;
}

ul#nav ul li a:hover { 
  color: #222;
  margin-right: 2px;
}



/* Image Transitions */
ul#images {
  margin: 0 15px 10px 0;
  padding: 0;
  list-style: none;
  position: relative;
}

ul#images li {
  display: block;
  overflow: hidden;
  padding: 0;
  float: left;
  width: 155px;
  height: 300px;
}

</style>
<body>
<div id="main">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  

	<footer>
      <p>YOUR SAVINGS ACCOUNT IS ALREADY CLOSED </p>
    </footer>
    <div class="content">
    <div class="form_settings">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <a href='Home2.jsp'>
    <input type='button' name='home' value='HOME'></a>
         <a href='logout.jsp'>
    <input type='button' name='home' value='LOGOUT'></a>
    </div>
    </div>
    </div>
</body>
</html>