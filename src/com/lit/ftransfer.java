package com.lit;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ftransfer
 */
@WebServlet("/ftransfer")
public class ftransfer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ftransfer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String saccno=request.getParameter("sender");
		String raccno=request.getParameter("receiver");
		//String password=request.getParameter("password");
		PrintWriter out=response.getWriter();
				
	    double amt=Double.parseDouble(request.getParameter("amount"));
	    double bal1=0.0;
	    double bal2=0.0;
	    String email="";
	    String mymsg="";
	    String status="";
	       try
	       {
	    	   	Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
				//in fixed accno how much is the balance from the savings table(sender)
				PreparedStatement ps=con.prepareStatement("select balance from savings where accno=?");
				ps.setString(1,saccno);
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					//retrived balance
					bal1=rs.getDouble(1);
				}
				rs.close();
				ps.close();
				//resultset and prpeparedstatement instance closed
				//from register table we gt the sender's mail
				ps=con.prepareStatement("select email from register where accno=?");
				//opened the instance again
				ps.setString(1,saccno);
				rs=ps.executeQuery();
				if(rs.next())
				{
					//retrived the mail
					email=rs.getString(1);
				}
				rs.close();
				ps.close();
				//again resultset and prpeparedstatement instance closed
				// retrived balance from savings using account no(receiver)
				//new preparedstatement and resultset
				PreparedStatement ps1=con.prepareStatement("select * from savings where accno=?");
				ps1.setString(1,raccno);
				ResultSet rs2=ps1.executeQuery();
				//if the sender's balance is more than the amount to be sent ,then it procedees
				if(rs2.next() && amt<=bal1)
				{
					//retrived receiver's balance
					bal2=rs2.getDouble(3);
					status=rs2.getString(12);
					//amount deducted from sender's balance
					bal1=bal1-amt;
					//updates new sender's balance in his account 
				   //new preparedstatement
					if("open".equals(status))
					{

					PreparedStatement ps2=con.prepareStatement("update savings set balance=? where accno=?");
					ps2.setDouble(1, bal1);
					ps2.setString(2,saccno);
					ps2.executeUpdate();
					//sends mail to the sender using SENDER'S (BALANCE,ACCOUNT NO,EMAIL ID) AND RECEIVER'S (ACCOUNT NO)
					mymsg=transfer.send(bal1,amt,saccno,raccno,email);
					//amount added to receiver's bal
					bal2=bal2+amt;
					//updates receiver's bal in database
					PreparedStatement ps3=con.prepareStatement("update savings set balance=? where accno=?");
					ps3.setDouble(1, bal2);
					ps3.setString(2,raccno);
					ps3.executeUpdate();
					//new preparedstatement
					//inserts everything in reports database
					PreparedStatement ps4=con.prepareStatement("insert into reports values(banksq.nextval,?,SYSDATE,?,?,?)");
					ps4.setString(1,saccno);
					ps4.setString(2,"savings");
					ps4.setString(3, raccno);
					ps4.setDouble(4, amt);
					ps4.executeUpdate();
					response.sendRedirect("Transfer.jsp?message="+mymsg+"");
					}
					else
					{
						response.sendRedirect("blockbankuser.jsp");
					}
				}
				else
				{
					response.sendRedirect("Transfer.jsp?message=Insufficient  Balance or Wrong Receiver Account Number");
				}
					
	       }
	       catch(Exception ee)
	       {
	    	   ee.printStackTrace();
	       }
	}

}
