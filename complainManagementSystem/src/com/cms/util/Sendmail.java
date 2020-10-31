package com.cms.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;

import com.cms.to.MailTO;

public class Sendmail {
public static boolean main1(MailTO templeRegistrationsTO  ) {
	 String result;
	   // Recipient's email ID needs to be mentioned.
	   String to = templeRegistrationsTO.getEmail();
	   System.out.println("email-->"+to);
	   
	   final String fromEmail = "onlinetemplespt@gmail.com"; //requires valid gmail id
	   final String password = "online123"; // correct password for gmail id
	   final String toEmail = to; // can be any email id 
	    
	   System.out.println("TLSEmail Start");
	   Properties props = new Properties();
	   props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
	   props.put("mail.smtp.port", "587"); //TLS Port
	   props.put("mail.smtp.auth", "true"); //enable authentication
	   props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
	    
	           //create Authenticator object to pass in Session.getInstance argument
	   Authenticator auth = new Authenticator() {
	       //override the getPasswordAuthentication method
	       protected PasswordAuthentication getPasswordAuthentication() {
	           return new PasswordAuthentication(fromEmail, password);
	       }
	   };
	   Session ses = Session.getInstance(props, auth);
	   
	return EmailUtill.sendEmail(ses, "prasanna.ab.01@gmail.com","Online Temple Created successfully ", "Hello "+templeRegistrationsTO.getUserName() +" Temple Registered Success \n user Name "+templeRegistrationsTO.getUserName() +"and Password "+templeRegistrationsTO.getPassword()+"\n use this user name and password for login and add the temple Details Properly \n Thanks! \n ");
	 
}
public static void main(String[] args) {
	MailTO registrationsTO = new MailTO();
	registrationsTO.setEmail("prasanna.ab.01@gmail.com");
	registrationsTO.setUserName("temple");
	registrationsTO.setPassword("temple");
	Sendmail.main1(registrationsTO);
}

}
