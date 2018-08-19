package com.lit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class OtpDao{
	public static boolean validate(String accno,String cifno){
		boolean status = false;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
			PreparedStatement ps=con.prepareStatement("select * from ACCOUNT where  ACC_NO=? and CIF_NO=?");
			ps.setString(1,accno);
			ps.setString(2,cifno);
			ResultSet rs=ps.executeQuery();
			status=rs.next();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
}