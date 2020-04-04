package CE407;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
        System.out.println(rs.getString(1)+"  "+rs.getInt(2)+"  "+rs.getString(3)+ " " +rs.getInt(4));
    }
    
    public static void setData(String id, int code, String address, int age) throws SQLException
    {
        try{
        PreparedStatement s = con.prepareStatement("insert into voter values(?,?,?,?)");
        
        s.setString(1,id);
        s.setInt(2,code);
        s.setString(3,address);
        s.setInt(4,age);
        
        s.execute();
       
    }catch(SQLException e)
    {
        System.out.println(e);
    }
    }
}