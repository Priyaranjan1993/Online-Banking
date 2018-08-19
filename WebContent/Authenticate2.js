 function make_blank(a,b)
{
      if(a.value==b)
          a.value="";
          a.style.color="black";
}
function validate()
{
	var x=document.forms["Auth"]["userid"].value;
	if (x==null || x=="")
	  {
	  alert(" Username must be filled out");
	  return false;
	  }
	var y=document.forms["Auth"]["passwd"].value;
	if (y==null || y=="")
	  {
	  alert("Password must be filled out");
	  return false;
	  }
	
}

