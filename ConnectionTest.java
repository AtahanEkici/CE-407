/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CE407;

import java.sql.*;
import static CE407.MysqlConnection.GatherMailAdresses;
import static CE407.MysqlConnection.Change_Password;
import static CE407.MysqlConnection.Check_Code;
import static CE407.MysqlConnection.Check_For_Credentials_Adaptive;
import static CE407.MysqlConnection.Check_For_Credentials_Email;
import static CE407.MysqlConnection.Check_For_Credentials_ID;
import static CE407.MysqlConnection.Display_All_Passwords;
import static CE407.MysqlConnection.setSpecificData;
import static CE407.MysqlConnection.updateCode;
import static CE407.MysqlConnection.Is_Voted;
import static CE407.MysqlConnection.Password_Checker;
import static CE407.MysqlConnection.Update_Non_Valid_Emails;
import static CE407.MysqlConnection.Who_Is_Voted;
import static CE407.MysqlConnection.percentage;
import static CE407.MysqlConnection.Vote;
import static CE407.MysqlConnection.getConnection;
import static CE407.SendEmail.CodeGenerator;
import static CE407.SendEmail.SendMessage;
import static CE407.MysqlConnection.set_Username;
import static CE407.MysqlConnection.return_Username;


public class ConnectionTest 
{
    public static void main(String args[]) throws SQLException, InstantiationException, IllegalAccessException
    { 
        
        getConnection();
        
        //set_Username("123","16820020678");
        
        //System.out.println(return_Username("atahanekici@hotmail.com"));
        
        //updateCode("atahanekici@hotmail.com",CodeGenerator());
        
        //System.out.println(Check_Code("16820020678","0915"));
        
        //System.out.println(Check_For_Credentials_ID("16820020678","admin"));
        
        //System.out.println(Check_For_Credentials_Email("atahanekici@hotmail.com","admin"));
        
        //System.out.println(Check_For_Credentials_Adaptive("123","admin"));
        
        //Change_Password("admin","16820020678");
        
        //Display_All_Passwords();
        
        //System.out.println(Password_Checker());
        
        //System.out.println(percentage());
        
        //SendMessage("oksanekici70@gmail.com","Lanet konu","Lanet Kadın");
        
        //System.out.println(isValidEmailAddress("dfgdfsdfzgzdfhgfgxhfxgjhnfxgjhfghjfxgjxhfg@gmail.com"));
        
        //isValidAll();
        
        //System.out.println("\n");
        
        //Update_Non_Valid_Emails();
        
        //System.out.println(CodeGenerator());
        
        
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
