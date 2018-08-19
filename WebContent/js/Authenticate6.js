 function make_blank(a,b)
{
      if(a.value==b)
          a.value="";
          a.style.color="black";
}
function validate1()
{
	var x=document.forms["Auth98"]["cname1"].value;
	if (x==null || x=="")
	  {
	  alert("Credit Card number must be filled out");
	  return false;
	  }
	var y=document.forms["Auth98"]["cname2"].value;
	if (y==null || y=="")
	  {
	  alert("CIF Number must be filled out");
	  return false;
	  }
	var z=document.forms["Auth98"]["cname3"].value;
	if (z==null || z=="")
	  {
	  alert("Branch code must be filled out");
	  return false;
	  }
	
}

