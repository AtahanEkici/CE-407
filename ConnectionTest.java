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
import static CE407.MysqlConnection.Is_Voted;
import static CE407.MysqlConnection.Who_Is_Voted;

public class ConnectionTest 
{
    public static void main(String args[]) throws SQLException, InstantiationException, IllegalAccessException
    { 
        
        MysqlConnection.getConnection();
        
        //System.out.println(isValidEmailAddress("dfgdfsdfzgzdfhgfgxhfxgjhnfxgjhfghjfxgjxhfg@gmail.com"));
        
        isValidAll();
        
        //System.out.println(CodeGenerator());
        
        //updateCode("atahanekici@hotmail.com",CodeGenerator());
        
        //System.out.println(MysqlConnection.Is_Voted());
        
       //MysqlConnection.getDataVoter();
       
       //MysqlConnection.Set_Voted("16820020678",false);
       
       //System.out.println(MysqlConnection.GatherMailAdresses());
        
        //System.out.println("\n");

       // MysqlConnection.setSpecificData("22089345638","05273382894",36,"Buca","berkay.omerbas@gmail.com");
        
        //System.out.println("\n");
        
        //MysqlConnection.getDataVoter();
        
        //MysqlConnection.getDataCandidate();
        
        //System.out.println(Is_Voted("22089345638"));
        
        //MysqlConnection.getDataIntegrity();
        
        //Who_Is_Voted();
        
       //System.out.println(CodeGenerator());
       
       //SendMail("yigitdemircan@gmail.com");
       
       //System.out.println(CodeGenerator());
       
       //SendAll(MysqlConnection.GatherMailAdresses());
    }   
}
