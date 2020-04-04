package CE407;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// As suggested from the 
/**
 *
 * @author atahan ekici
 */
public class MysqlConnection 
{ 
private static Connection con;
    public static void getConnection() throws InstantiationException, IllegalAccessException
{ 
String url = "jdbc:mysql://localhost:3306/voter?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey"; //modified to overcome server time zone issues //
String username = "root"; // username for the database//
String password = "1234"; // password for the database //

   try
{
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();  // Using updated cj class file //

 con = DriverManager.getConnection(url,username,password); // 
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
        System.out.println(rs.getString(1)+"  "+rs.getInt(2)+"  "+rs.getString(3)+ " " +rs.getInt(4)); // geting data from 4 different columns //
    }
    
    public static void setData(String id, int code, String address, int age) throws SQLException
    {
        try{
        PreparedStatement s = con.prepareStatement("insert into voter values(?,?,?,?)"); // inserting corresponding tuples //
        
        // PARAMATER LOADING
        s.setString(1,id);
        s.setInt(2,code);
        s.setString(3,address);
        s.setInt(4,age);
        
        s.execute(); // executing the command //
       
    }catch(SQLException e)
    {
        System.out.println(e);
    }
    }
}
