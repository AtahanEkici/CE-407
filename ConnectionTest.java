/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CE407;
import java.sql.*;  


public class ConnectionTest 
{
    public static void main(String args[]) throws SQLException, InstantiationException, IllegalAccessException
    { 
        MysqlConnection mc = new MysqlConnection();
        
        MysqlConnection.getConnection();
        
        MysqlConnection.getData("voter");
        
        System.out.println("\n");

        MysqlConnection.setData("32920020424",4629,"Fahrettin Altay",36);
        
        System.out.println("\n");
        
        MysqlConnection.getData("voter");
    }
    
}

