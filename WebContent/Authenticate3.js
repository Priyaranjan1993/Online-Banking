 function make_blank(a,b)
{
      if(a.value==b)
          a.value="";
          a.style.color="black";
}
function validate()
{
	/*var a=document.forms["Auth2"]["userid"].value;
	if (a==null || a=="")
	  {
	  alert("First Name must be filled out");
	  return false;
	  }
	var b=document.forms["Auth2"]["name2"].value;
	if (b==null || b=="")
	  {
	  alert("Middle Name must be filled out");
	  return false;
	  }
	var c=document.forms["Auth2"]["name3"].value;
	if (c==null || c=="")
	  {
	  alert("Last Name must be filled out");
	  return false;
	  }
	var d=document.forms["Auth2"]["name4"].value;
	if (d==null || d=="")
	  {
	  alert("DOB must be filled out");
	  return false;
	  }
	var e=document.forms["Auth2"]["name5"].value;
	if (e==null || e=="")
	  {
	  alert("Address must be filled out");
	  return false;
	  }
	/**var f=document.forms["Auth2"]["name6"].value;
	if (f==null || f=="")
	  {
	  alert("Email must be filled out");
	  return false;
	  }**/
	
	var f=document.forms["Auth2"]["name6"].value;
	var atpos=f.indexOf("@");
	var dotpos=f.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=f.length || f==null || f=="")
	  {
	  alert("Not a valid e-mail address");
	  return false;
	  }
	
}	
function fun(){
var g=document.forms["Auth2"]["name7"].value;
	if (g==null || g=="")
	  {
	  alert("Alternate Email must be filled out");
	  return false;
	  }
	
	
	
	/**
	// Declaring required variables
	var digits = "0123456789";
	// non-digit characters which are allowed in phone numbers
	var phoneNumberDelimiters = "()- ";
	// characters which are allowed in international phone numbers
	// (a leading + is OK)
	var validWorldPhoneChars = phoneNumberDelimiters + "+";
	// Minimum no of digits in an international phone no.
	var minDigitsInIPhoneNumber = 10;

	function isInteger(s)
	{   var i;
	    for (i = 0; i < s.length; i++)
	    {   
	        // Check that current character is number.
	        var c = s.charAt(i);
	        if (((c < "0") || (c > "9"))) return false;
	    }
	    // All characters are numbers.
	    return true;
	}
	function trim(s)
	{   var i;
	    var returnString = "";
	    // Search through string's characters one by one.
	    // If character is not a whitespace, append to returnString.
	    for (i = 0; i < s.length; i++)
	    {   
	        // Check that current character isn't whitespace.
	        var c = s.charAt(i);
	        if (c != " ") returnString += c;
	    }
	    return returnString;
	}
	function stripCharsInBag(s, bag)
	{   var i;
	    var returnString = "";
	    // Search through string's characters one by one.
	    // If character is not in bag, append to returnString.
	    for (i = 0; i < s.length; i++)
	    {   
	        // Check that current character isn't whitespace.
	        var c = s.charAt(i);
	        if (bag.indexOf(c) == -1) returnString += c;
	    }
	    return returnString;
	}

	function checkInternationalPhone(strPhone){
	var bracket=3
	strPhone=trim(strPhone)
	if(strPhone.indexOf("+")>1) return false
	if(strPhone.indexOf("-")!=-1)bracket=bracket+1
	if(strPhone.indexOf("(")!=-1 && strPhone.indexOf("(")>bracket)return false
	var brchr=strPhone.indexOf("(")
	if(strPhone.indexOf("(")!=-1 && strPhone.charAt(brchr+2)!=")")return false
	if(strPhone.indexOf("(")==-1 && strPhone.indexOf(")")!=-1)return false
	s=stripCharsInBag(strPhone,validWorldPhoneChars);
	return (isInteger(s) && s.length >= minDigitsInIPhoneNumber);
	}

	function ValidateForm(){
		var Phone=document.frmSample.txtPhone
		
		if ((Phone.value==null)||(Phone.value=="")){
			alert("Please Enter your Phone Number")
			Phone.focus()
			return false
		}
		if (checkInternationalPhone(Phone.value)==false){
			alert("Please Enter a Valid Phone Number")
			Phone.value=""
			Phone.focus()
			return false
		}
		return true
	 }
**/
	
	
	var h=document.forms["Auth2"]["name8"].value;
	if (h==null || h=="")
	  {
	  alert("Phone Number must be filled out");
	  return false;
	  }
	var i=document.forms["Auth2"]["name9"].value;
	if (i==null || i=="")
	  {
	  alert("City must be filled out");
	  return false;
	  }
	var j=document.forms["Auth2"]["name10"].value;
	if (j==null || j=="")
	  {
	  alert("State must be filled out");
	  return false;
	  }
	var k=document.forms["Auth2"]["name11"].value;
	if (k==null || k=="")
	  {
	  alert("Mobile Number must be filled out");
	  return false;
	  }
	var l=document.forms["Auth2"]["name12"].value;
	if (l==null || l=="")
	  {
	  alert("Gender must be filled out");
	  return false;
	  }
	var m=document.forms["Auth2"]["name13"].value;
	if (m==null || m=="")
	  {
	  alert("Bank Branch must be filled out");
	  return false;
	  }
	var n=document.forms["Auth2"]["name14"].value;
	if (n==null || n=="")
	  {
	  alert("Bank State must be filled out");
	  return false;
	  }
	
	
}

