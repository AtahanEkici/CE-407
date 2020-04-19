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
    
    public static void getDataVoter() throws SQLException
    {
        Statement s = con.createStatement();
        ResultSet rs = s.executeQuery("select * from voter");
        
while(rs.next())
        System.out.println(rs.getString(1)+"  "+rs.getInt(2)+" "+rs.getString(3)+ " " +rs.getInt(4)+ " " +rs.getString(5)+" "+rs.getString(6)+" ---Voted: "+rs.getBoolean(7)); // geting data from 5 different columns //
    }
    
    public static void setAllData(String id,String code, String tel_num, int age,String address, String email,boolean Is_Voted) throws SQLException // Function //
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
        s.setBoolean(7, Is_Voted);
        // PARAMETERS LOADED //
        
        s.execute(); // executing the command //
       
    }catch(SQLException e) //Exception handling //
    {
        System.out.println(e); // Printing the exception //
    }
    }
    
    public static void getDataIntegrity() throws SQLException
    {
         Statement s = con.createStatement();
        ResultSet rs = s.executeQuery("select * from integrity");
        
while(rs.next())
        System.out.println("Delete Count:"+rs.getInt(1)+"\n Insert Count: "+rs.getInt(2)+"\n Update Count: "+rs.getInt(3)); // geting data from 3 different columns //
    }
    
    public static void getDataCandidate() throws SQLException
    {
         Statement s = con.createStatement();
        ResultSet rs = s.executeQuery("select * from integrity");
        
while(rs.next())
        System.out.println("Name:"+rs.getString(1)+"\nVote Count : "+rs.getLong(2)); // geting data from 2 different columns //
    }
    
    
    public static void Who_Is_Voted() throws SQLException //Function for shoving the name of the voter and if the corresponding person to that name is voted or not //
    {
        Statement s = con.createStatement();
        ResultSet rs = s.executeQuery("select ID,Is_Voted from voter");
        
        while(rs.next())
        {
            System.out.println(rs.getString(1)+" Is_Voted: " + rs.getBoolean(2));
        }  
    }
    
        public static void setSpecificData(String id,String Tel_num,int age,String address, String email, boolean Is_Voted) throws SQLException // Function //
    {
       try{
        PreparedStatement s = con.prepareStatement("insert into `voter`(ID,Tel_num,Age,Address,Email,Is_voted) values(?,?,?,?,?,?)"); // inserting corresponding tuples //
        
        // PARAMATER LOADING //
        s.setString(1,id);
        s.setString(2,Tel_num);
        s.setInt(3,age);
        s.setString(4,address);
        s.setString(5,email);
        s.setBoolean(6,Is_Voted);
        // PARAMETERS LOADED //
        
        s.execute(); // executing the command //
       
    }catch(SQLException e) //Exception handling //
    {
        System.out.println(e); // Printing the exception //
    }
    }
   
        public static boolean Is_Voted(String ID) throws SQLException
        {  
        Statement s = con.createStatement();
        ResultSet rs;
        rs = s.executeQuery("select Is_Voted from voter where ID = '"+ID+"'");
        int b = 0;
        
        while(rs.next())
        {
            b = rs.getInt(1);
        }
        
        if(b == 1)
        {
            return true;
        }
        else
        {
            return false;
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
