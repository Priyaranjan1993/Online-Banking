<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
		int n=Integer.parseInt(request.getParameter("newpass"));
		int p=Integer.parseInt(request.getParameter("reenter"));
    	String name1=(String)session.getAttribute("name");
    	String account="";
        int pin=Integer.parseInt(request.getParameter("oldpass"));
        int pin1=0;
        try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
			PreparedStatement ps=con.prepareStatement("select accno from REGISTER where user_id=?");
			ps.setString(1,name1);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				 account=rs.getString(1);
			}
			rs.close();
			ps.close();
			ps=con.prepareStatement("select pin from credit_card where accno=?");
			ps.setString(1,account);
			rs=ps.executeQuery();
			if(rs.next())
			{
				pin1=rs.getInt(1);
			}
			rs.close();
			ps.close();
        }
			catch(Exception ee)
			{
				ee.printStackTrace();
			}

		if(pin==pin1 )
		{
			if(n==p)
			{
			try
				{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
	String query="update credit_card set pin='"+n+"' where accno='"+account+"'";
	PreparedStatement stmt=con1.prepareStatement(query);
	stmt.executeUpdate();
	response.sendRedirect("pinupdate.jsp");
				}
catch(Exception ee)
{
	ee.printStackTrace();
}
			}
			else
			{
				response.sendRedirect("pinupdateerror.jsp");
			}
			
		}
		else
		{
			//redirect to error page
			response.sendRedirect("pinupdateerror.jsp");
		}
				
	%>

</body>
</html>