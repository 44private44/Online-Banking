/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package signon_final;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Dell
 */
public class signon_varify
{
    String url = "jdbc:mysql://localhost:3306/banking";
    String user = "root";
    String psw = "Soham@2001";
    
    String sql = "select * from login1 where Userid=? and password=?";
    
    public boolean signon_varify_method(String userid, String password)
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user,psw);
            PreparedStatement st = con.prepareStatement(sql);
   
            st.setString(1, userid);
            st.setString(2, password);
            
            ResultSet rs = st.executeQuery();
            
//            if(captcha!="12Q5ZM")
//            {
//                return false;
//            }
            
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
