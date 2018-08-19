package com.lit;
import java.util.Properties;  
import javax.mail.*;  
import javax.mail.internet.*;  
public class transfer {
	public static String send(double bal,double amnt,String sc,String ra,String email)
	{
		String mymsg="";
		String subject="transaction";
		String msg="Hi Rs "+amnt+" has transfered from ur accno:-"+sc+" to accno:-"+ra+" and ur remaining balance is"+bal;
		String to=email;//change accordingly  
		  
		  
		  //Get the session object  
		  Properties props = new Properties();  
		  props.put("mail.smtp.host", "smtp.gmail.com");  
		  props.put("mail.smtp.socketFactory.port", "465");  
		  props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");  
		  props.put("mail.smtp.auth", "true");  
		  props.put("mail.smtp.port", "465");  
		   
		  Session session = Session.getDefaultInstance(props,  
		   new javax.mail.Authenticator() {  
		   protected PasswordAuthentication getPasswordAuthentication() {  
		   return new PasswordAuthentication("priyaranjan9090@gmail.com","microsoftgoogle");//change accordingly  
		   }  
		  });  
		   
		  //compose message  
		  try {  
		   MimeMessage message = new MimeMessage(session);  
		   message.setFrom(new InternetAddress("priyaranjan9090@gmail.com"));//change accordingly  
		   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
		   message.setSubject(subject);  
		   message.setText(msg);  
		     
		   //send message  
		   Transport.send(message);  
		  
		   mymsg="message sent successfully";  
		   
		  } catch (MessagingException e) {throw new RuntimeException(e);}  
		   
		return mymsg;
	}
}
