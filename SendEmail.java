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
import javax.mail.internet.AddressException;

public class SendEmail 
{

 public static void SendMail(String receiver) throws InstantiationException, IllegalAccessException, SQLException {
 // Add recipient
 String to = ""+receiver+"";

// Add sender
 final String from = "ce407project@gmail.com";
 final String username = "ce407project@gmail.com";//your Gmail username 
 final String password = "ce407project";//your Gmail password

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
 message.setSubject("Your Authentication Code For Voting");
 
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
 
 public static void SendMessage(String receiver,String Subject,String mesaj) throws InstantiationException, IllegalAccessException, SQLException {
 // Add recipient
 String to = ""+receiver+"";

// Add sender
 final String from = "ce407project@gmail.com";
 final String username = "ce407project@gmail.com";//your Gmail username 
 final String password = "ce407project";//your Gmail password

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
 message.setSubject(""+Subject+"");
 
 // Put the content of your message
 message.setText(""+mesaj+"");

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
       for(int i = 0; i < Mails.size();i++)
       {
           SendMail(Mails.get(i));
           System.out.println("Sent to "+Mails.get(i)+"");
       }   
 }
 
 public static boolean isValidEmailAddress(String email) {
   boolean result = true;
   try {
      InternetAddress emailAddr = new InternetAddress(email);
      emailAddr.validate();
   } catch (AddressException ex) 
   {
       System.out.println(ex);
      result = false;
   }
   return result;
}
 
 public static void isValidAll() throws SQLException
 {
     try{
     ArrayList <String> list = new <String> ArrayList();
     list = MysqlConnection.GatherMailAdresses();
     
     for(int i=0;i<list.size();i++)
     {
         if(isValidEmailAddress(list.get(i)) == true)
         {
             System.out.println(""+list.get(i)+": is valid");
         }
         else
         {
             System.out.println(""+list.get(i)+": is invalid");
         }
     }
     }catch(SQLException e)
     {
         System.out.println(e);
     }
 }
}
