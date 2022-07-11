/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package payment_data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Dell
 */
public class securitypin_class 
{
     String url = "jdbc:mysql://localhost:3306/banking";
    String user = "root";
    String psw = "Soham@2001";
    
    String sql = "select * from security where security_pin=?";
    
    public boolean Authenticate_securitypin(String secret_code )
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user,psw);
            PreparedStatement st = con.prepareStatement(sql);
   
            st.setString(1, secret_code);
            
            ResultSet rs = st.executeQuery();
            
            if(rs.next())
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
