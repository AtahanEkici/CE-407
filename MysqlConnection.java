package CE407;


import static java.nio.file.Files.list;
import static java.rmi.Naming.list;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import static java.util.Collections.list;

// As suggested from the manual all functions should not be called like java.sql.*; //
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
        System.out.println(rs.getString(1)+"  "+rs.getInt(2)+" "+rs.getString(3)+ " " +rs.getInt(4)+ " " +rs.getString(5)+" "+rs.getString(6)); // geting data from 5 different columns //
    }
    
    public static void setAllData(String id,String code, String tel_num, int age,String address, String email) throws SQLException // Function //
    {
        try{
        PreparedStatement s = con.prepareStatement("insert into voter values(?,?,?,?,?)"); // inserting corresponding tuples //
        
        // PARAMATER LOADING //
        s.setString(1,id);
        s.setString(2, code);
        s.setString(3,tel_num);
        s.setInt(4,age);
        s.setString(5,address);
        s.setString(6,email);
        // PARAMETERS LOADED //
        
        s.execute(); // executing the command //
       
    }catch(SQLException e) //Exception handling //
    {
        System.out.println(e); // Printing the exception //
    }
    }

    
        public static void setSpecificData(String id,String Tel_num,int age,String address, String email) throws SQLException // Function //
    {
       try{
        PreparedStatement s = con.prepareStatement("insert into `voter`(ID,Tel_num,Age,Address,Email) values(?,?,?,?,?)"); // inserting corresponding tuples //
        
        // PARAMATER LOADING //
        s.setString(1,id);
        s.setString(2,Tel_num);
        s.setInt(3,age);
        s.setString(4,address);
        s.setString(5,email);
        // PARAMETERS LOADED //
        
        s.execute(); // executing the command //
       
    }catch(SQLException e) //Exception handling //
    {
        System.out.println(e); // Printing the exception //
    }
    }
        
        public static void updateCode(String Email,String code) throws SQLException
        {
            try
            {
             String sqlUpdate;
                sqlUpdate = "UPDATE voter\n"
                        + "SET Code = ? "
                        + "WHERE Email = '"+Email+"'";
             
PreparedStatement st = con.prepareStatement(sqlUpdate);
st.setString(1, code);
st.execute();

            }catch(SQLException e) //Exception handling //
    {
        System.out.println(e); // Printing the exception //
    }
}
        
        public static ArrayList<String> GatherMailAdresses() throws SQLException
        {
            Statement s = con.createStatement();
        ResultSet rs = s.executeQuery("select voter.Email From voter");
        ArrayList<String> list;
        list = new ArrayList<>();
        
while(rs.next())
{
        list.add(rs.getString(1)); // geting data from 5 different columns //
 } 
       return list; 
}            
}
