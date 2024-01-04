package pawfect_home;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {
    private String subject;
    private String body;
    private String sender;
    private String recipient;
    private String password;

    public Mail(String recipient, String body) {
        this.subject = "A person is interested in your pet!";
        this.body = body;
        this.sender = "pawfecthome22@gmail.com";
        this.recipient = recipient;
        this.password = System.getenv("EMAIL_PASSWORD");
    }

    public void sendEmail() {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(sender, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(sender));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient));
            message.setSubject(subject,"UTF-8");
            message.setText(body, "text/html; charset=UTF-8");
            message.setContent(body, "text/html; charset=UTF-8");
            Transport.send(message);
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
