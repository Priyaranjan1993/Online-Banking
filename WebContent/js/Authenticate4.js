 function make_blank(a,b)
{
      if(a.value==b)
          a.value="";
          a.style.color="black";
}
function validate()
{
	var x=document.forms["Auth12"]["userid"].value;
	if (x==null || x=="")
	  {
	  alert("OTP ID must be filled out");
	  return false;
	  }
	var y=document.forms["Auth12"]["passwd"].value;
	if (y==null || y=="")
	  {
	  alert("ONE-TIME-PASSWORD must be filled out");
	  return false;
	  }
	
}

