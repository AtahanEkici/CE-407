/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CE407;
import static CE407.MysqlConnection.GatherMailAdresses;
import java.sql.*;
import static CE407.SendEmail.*;
import CE407.MysqlConnection.*;
import static CE407.MysqlConnection.setSpecificData;
import static CE407.MysqlConnection.updateCode;
import static CE407.MysqlConnection.Is_Voted;
import static CE407.MysqlConnection.Password_Checker;
import static CE407.MysqlConnection.Update_Non_Valid_Emails;
import static CE407.MysqlConnection.Who_Is_Voted;
import static CE407.MysqlConnection.percentage;
import static CE407.MysqlConnection.Vote;
import static CE407.SendEmail.SendMessage;

public class ConnectionTest 
{
    public static void main(String args[]) throws SQLException, InstantiationException, IllegalAccessException
    { 
        
        MysqlConnection.getConnection();
        
        System.out.println(Password_Checker());
        
        //System.out.println(percentage());
        
        //SendMessage("oksanekici70@gmail.com","Lanet konu","Lanet Kadın");
        
        //System.out.println(isValidEmailAddress("dfgdfsdfzgzdfhgfgxhfxgjhnfxgjhfghjfxgjxhfg@gmail.com"));
        
        //isValidAll();
        
        //System.out.println("\n");
        
        //Update_Non_Valid_Emails();
        
        //System.out.println(CodeGenerator());
        
        //updateCode("atahanekici@hotmail.com",CodeGenerator());
        
        //System.out.println(MysqlConnection.Is_Voted());
        
       //MysqlConnection.getDataVoter();
       
       //MysqlConnection.Set_Voted("16820020678",false);
       
       //System.out.println(MysqlConnection.GatherMailAdresses());
        
        //System.out.println("\n");

       // MysqlConnection.setSpecificData("22089345638","05273382894",36,"Buca","berkay.omerbas@gmail.com");
        
        //System.out.println("\n");
        
       // MysqlConnection.getDataVoter();
        
       // System.out.println("\n");
        
        //MysqlConnection.getDataCandidate();
        
         //System.out.println("\n");
         
         //MysqlConnection.getDataIntegrity();
        
        //System.out.println(Is_Voted("22089345638"));
        
        
        //Who_Is_Voted();
        
       //System.out.println(CodeGenerator());
       
       //SendMail("yigitdemircan@gmail.com");
       
       //System.out.println(CodeGenerator());
       
       //SendAll(MysqlConnection.GatherMailAdresses());
    }   
}
