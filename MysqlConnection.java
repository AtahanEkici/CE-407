package CE407;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author atahan ekici
 */
public class MysqlConnection 
{ 
private static Connection con;
    public static void getConnection() throws InstantiationException, IllegalAccessException
{ 
String url = "jdbc:mysql://localhost:3306/voter?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey"; 
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
    
    public static void getData(String name) throws SQLException
    {
        Statement s = con.createStatement();
        ResultSet rs = s.executeQuery("select * from "+name+"");
        
while(rs.next())
        System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getInt(3)+ " " +rs.getString(4));
    }
    
    public static void setData(String tablename)
    {
        
    }
}
