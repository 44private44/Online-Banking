/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package signup_Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Dell
 */
public class signup_otp_varify_Dao 
{
  String url = "jdbc:mysql://localhost:3306/banking";
    String user = "root";
    String psw = "Soham@2001";
    
    String sql2 = "select * from reference_id where refid=? ";

    
    public boolean otp_refid_check(String refid )
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user,psw);
            PreparedStatement st2 = con.prepareStatement(sql2);

            st2.setString(1, refid);
            
            ResultSet rs2 = st2.executeQuery();

            
            if(rs2.next())
            {   
                return true;
                
            }
            
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }        
        return false;
        
    }   
}
