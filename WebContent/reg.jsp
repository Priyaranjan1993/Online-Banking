<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String Bank_State=request.getParameter("Bank_State");
String Add=request.getParameter("Address");
String City=request.getParameter("City");
String Accno=request.getParameter("Account_Number");
String State=request.getParameter("State");
String Type=request.getParameter("Type");
String Bank=request.getParameter("Bank");
String name=request.getParameter("name");
String email=request.getParameter("email");
String uname=request.getParameter("username");
String pswd=request.getParameter("password");

String birthm=request.getParameter("BirthMonth");
String a[]=birthm.split("-");
Date d=new Date(Integer.parseInt(a[2]),Integer.parseInt(a[1]),Integer.parseInt(a[0]));
String gender=request.getParameter("gender");
String phone=request.getParameter("phone");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
    String query = "insert into REGISTER (BANK_STATE,ADDRESS,CITY,ACCNO,STATE,TYPE,BANK_BRANCH,NAME,EMAIL,USER_ID,PASSWORD,DOB,GENDER,MOB_PHONE,USER_TYPE,BLOCK) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(query);
	pstmt.setString(1,Bank_State);
	pstmt.setString(2,Add);
	pstmt.setString(3,City);
	pstmt.setString(4,Accno);
	pstmt.setString(5,State);
	pstmt.setString(6,Type);
	pstmt.setString(7,Bank);
	pstmt.setString(8,name);
	pstmt.setString(9,email);
	pstmt.setString(10,uname);
	pstmt.setString(11,pswd);
	pstmt.setDate(12,d);
	pstmt.setString(13,gender);
	pstmt.setString(14,phone);
	pstmt.setString(15,"User");
	pstmt.setString(16,"false");
	pstmt.executeUpdate();
}
catch(Exception e)
{
	System.out.println(e);
}

RequestDispatcher rd = request.getRequestDispatcher("user_id.jsp");
rd.forward(request,response);

%>
</body>
</html>