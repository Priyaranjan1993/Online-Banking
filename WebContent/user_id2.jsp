<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/newstyle.css" type="text/css"/>
        
         <style type="text/css" rel="stylesheet">  
        body
        {
        background: url("images/flower.jpg");
        } 
        </style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <div  class="form">

            <form id="contactform" action="reg.jsp" method="post">
            <input type="hidden" name="name" value="<%=request.getParameter("name")%>">
			<input type="hidden" name="email" value="<%=request.getParameter("email")%>">
			<input type="hidden" name="username" value="<%=request.getParameter("username")%>">
			<input type="hidden" name="password" value="<%=request.getParameter("password")%>">
			<input type="hidden" name="BirthMonth" value="<%=request.getParameter("BirthMonth")%>">
			<input type="hidden" name="gender" value="<%=request.getParameter("gender")%>">
			<input type="hidden" name="phone" value="<%=request.getParameter("phone")%>">
			
			
                <p class="contact"><label for="Bank State">Bank State</label></p>

                <input id="Bank_State" name="Bank_State" placeholder="Bank State" required="" tabindex="1" type="text">

                <p class="contact"><label for="Address">Address</label></p>

                <input id="Address" name="Address" placeholder="Address" required="" type="text">
                <p class="contact"><label for="City">City</label></p>
                <input id="City" name="City" placeholder="City" required="" tabindex="2" type="text">
 				 <p class="contact"><label for="Account Number">Account Number</label></p>
                <input id="Account_Number" name="Account_Number" placeholder="Account Number" required="" tabindex="2" type="text">				
            <fieldset>

                 <label>State</label>

                  <label class="month">

                  <select class="select-style" name="State">

                  <option value="">State</option>

                  <option  value="Odisha">Odisha</option>

                  <option value="Kashmir">Kashmir</option>
                  
                  <option value="West Bengal">West Bengal</option>
                  
                  <option value="Uttar Pradesh">Uttar Pradesh</option>
                  
                  <option value="Gujrat">Gujrat</option>
                  
                  <option value="Delhi">Delhi</option>
                  
                  <option value="Tamil Nadu">Tamil Nadu</option>
                  
                  <option value="Andhra Pradesh">Andhra Pradesh</option>

                  </label>

                 </select>   
                 
              </fieldset>
          	<p></p>
            
            
            <fieldset>

                 <label>Type</label>

                  <label class="month">

                  <select class="select-style" name="Type">

                  <option  value="Credit Card">Credit Card</option>

                  <option value="Banking">Banking</option>
					</select>
                  </label>

                    
                 
              </fieldset>
              
              <p>
              </p>
                <fieldset>

                 <label>Bank State and Branch</label>

                  <label class="month">

                  <select class="select-style" name="Bank" >
					<optgroup label="ODISHA">

                  <option value="BBSR">BBSR</option>

                  <option  value="CTC">CTC</option>

                  <option value="PURI">PURI</option>
                  
                  </optgroup>
                  
                  <optgroup label="WEST BENGAL">

                  <option value="KOLKOTA">KOLKOTA</option>

                  <option  value="SALT LAKE CITY">SALT LAKE CITY</option>

                  <option value="JADAVPUR">JADAVPUR</option>
                  
                  </optgroup>
                  </select>
                  </label>  
              </fieldset>
              <p></p>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Sign me up!" type="submit">   

   </form>
</div>
</body>
</html>