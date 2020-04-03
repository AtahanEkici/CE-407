package CE407;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author atahan ekici
 */
public class MysqlConnection 
{ 
private static Connection con;
    
    public static void getConnection() throws InstantiationException, IllegalAccessException
{ 
String url = "jdbc:mysql://localhost:3306/world?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey"; 
String username = "root";
String password = "1234";

   try
{
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();  

 con = DriverManager.getConnection(url,username,password);
}catch(ClassNotFoundException | SQLException e)
{ 
   System.out.println(e);
}  
}
}