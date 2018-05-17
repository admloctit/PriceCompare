package ecom.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class JavaMailConfig {
	@Autowired
	private JavaMailSender mailSender;

	public void sendEmail(String receiver, String mailSubject, String username) {
//		String sendMail = " <b>Hello!<b></br>"
//				+ "To reset your Ecommerce account password click on the following link. Please note that reset link will expire in 48 hours. If you didn't issue a password reset you can safely ignore this email. </br>"
//				+ "http://localhost:8080/Ecommerce/admin/account/getnewpass.html?us="
//				+ username + "</br>" + "Have a nice day," + "Tuan Vu.";
		String sendMail = "http://localhost:8080/Ecommerce/admin/account/getnewpass.html?us="+username;
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setTo(receiver);
		simpleMailMessage.setSubject(mailSubject);
		simpleMailMessage.setText(sendMail);
		mailSender.send(simpleMailMessage);
	}
}