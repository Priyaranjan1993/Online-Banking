 function make_blank(a,b)
{
      if(a.value==b)
          a.value="";
          a.style.color="black";
}
function validate()
{
	var x=document.forms["Auth11"]["name1"].value;
	if (x==null || x=="")
	  {
	  alert("Account number must be filled out");
	  return false;
	  }
	var y=document.forms["Auth11"]["name2"].value;
	if (y==null || y=="")
	  {
	  alert("CIF Number must be filled out");
	  return false;
	  }
	var z=document.forms["Auth11"]["name3"].value;
	if (z==null || z=="")
	  {
	  alert("Branch code must be filled out");
	  return false;
	  }
	var a=document.forms["Auth11"]["cname1"].value;
	if (a==null || a=="")
	  {
	  alert("Credit Card number must be filled out");
	  return false;
	  }
	
}

