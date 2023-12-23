package pawfect_home;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class MailSender{

    private String body;
    private String recipient;

    public MailSender(String body, String recipient){
        this.body = body;
        this.recipient = recipient;
    }

    public void sendEmail() {
          ProcessBuilder pb = new ProcessBuilder("python", "mail.py", body, recipient);
          pb.redirectErrorStream(true);
            try {
                Process p = pb.start();
                BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream()));
                String ret = in.readLine();
                System.out.println("Python script output: " + ret);
            } catch (Exception e) {
                e.printStackTrace();
            }
    }

    public void setBody(String body){
        this.body=body;
    }

    public void setRecipient(String recipient){
        this.recipient=recipient;
    }

    public String getBody(){
        return body;
    }

    public String getRecipient(){
        return recipient;
    }

}