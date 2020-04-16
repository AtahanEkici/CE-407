package CE407;  

import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import static CE407.MysqlConnection.updateCode;
import java.sql.SQLException;
import java.util.function.Consumer;
import java.util.function.Function;

public class SendEmail 
{

 public static void SendMail(String receiver) throws InstantiationException, IllegalAccessException, SQLException {
 // Add recipient
 String to = ""+receiver+"";

// Add sender
 String from = "laythese@gmail.com";
 final String username = "laythese@gmail.com";//your Gmail username 
 final String password = "dwzqtjtgmaxygsfe";//your Gmail password

String host = "smtp.gmail.com";

Properties props = new Properties();
 props.put("mail.smtp.auth", "true");
 props.put("mail.smtp.starttls.enable", "true"); 
 props.put("mail.smtp.host", host);
 props.put("mail.smtp.port", "587");

// Get the Session object
 Session session = Session.getInstance(props, new javax.mail.Authenticator() {
    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(username,password);
    }
});

try {
 // Create a default MimeMessage object
 Message message = new MimeMessage(session);
 
 message.setFrom(new InternetAddress(from));
 
 message.setRecipients(Message.RecipientType.TO,
 InternetAddress.parse(to));
 
 // Set Subject
 message.setSubject("Your Code For Voting");
 
 String Code = CodeGenerator();
 updateCode(receiver,Code);
 
 // Put the content of your message
 message.setText("Your voting code is : "+Code+"");

// Send message
 Transport.send(message);

System.out.println("Sent message successfully.... hopefully");

} catch (MessagingException e) 
{
 throw new RuntimeException(e);
 }
 }
 
 public static String CodeGenerator()
{
    ArrayList<Integer> list = new ArrayList<>(4);
    Random random = new Random();

    for (int i = 0; i < 4; i++)
    {
        list.add(random.nextInt(10));
    }
    StringBuilder sb = new StringBuilder();
    list.stream().map((Integer s) -> {
        sb.append(s);
        return s;
    }).forEachOrdered((Integer _item) -> {
         sb.append("");
    });
      String str = sb.toString();
     return str;
}  
 
 public static void SendAll(ArrayList<String> Mails) throws InstantiationException, IllegalAccessException, SQLException
 {
       for(int i = 0; i<Mails.size();i++)
       {
           SendMail(Mails.get(i));
           System.out.println("Sent to "+Mails.get(i)+"");
       }
 }
}
