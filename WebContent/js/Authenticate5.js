 function make_blank(a,b)
{
      if(a.value==b)
          a.value="";
          a.style.color="black";
}
function validate()
{
	alert("hello");
	var x=document.forms["Auth15"]["name"].value;
	if (x==null || x=="")
	  {
	  alert("Name Cannot be Empty");
	  return false;
	  }
	var y=document.forms["Auth15"]["email"].value;
	if (y==null || y=="")
	  {
	  alert("Email Cannot be Empty");
	  return false;
	  }
	var z=document.forms["Auth15"]["username"].value;
	if (z==null || z=="")
	  {
	  alert("Username Cannot be Empty");
	  return false;
	  }
	var a=document.forms["Auth15"]["password"].value;
	if (a==null || a=="")
	  {
	  alert("Password Cannot be Empty");
	  return false;
	  }
	var b=document.forms["Auth15"]["repassword"].value;
	if (b==null || b=="")
	  {
	  alert("Repassword Cannot be Empty");
	  return false;
	  }
	var c=document.forms["Auth15"]["Birthday"].value;
	if (c==null || c=="")
	  {
	  alert("Birthday Cannot be Empty");
	  return false;
	  }
	
}

