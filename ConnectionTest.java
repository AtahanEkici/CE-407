/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CE407;
import static CE407.MysqlConnection.GatherMailAdresses;
import java.sql.*;
import static CE407.SendEmail.*;
import static CE407.MysqlConnection.setSpecificData;
import static CE407.MysqlConnection.updateCode;

public class ConnectionTest 
{
    public static void main(String args[]) throws SQLException, InstantiationException, IllegalAccessException
    { 
        
        MysqlConnection.getConnection();
        
        //updateCode("atahanekici@hotmail.com","7977");
        
       //MysqlConnection.getData("voter");
       
       //System.out.println(MysqlConnection.GatherMailAdresses().get(0));
        
        //System.out.println("\n");

       // MysqlConnection.setSpecificData("22089345638","05273382894",36,"Buca","berkay.omerbas@gmail.com");
        
        //System.out.println("\n");
        
        //MysqlConnection.getData("voter");
        
        
       //System.out.println(CodeGenerator());
       
       //SendMail("yigitdemircan@gmail.com");
       
       //System.out.println(CodeGenerator());
       
       SendAll(MysqlConnection.GatherMailAdresses());

    }
    
}

