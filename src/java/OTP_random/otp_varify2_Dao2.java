/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package OTP_random;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Dell
 */
public class otp_varify2_Dao2 
{
 String url = "jdbc:mysql://localhost:3306/banking";
    String user = "root";
    String psw = "Soham@2001";
    
    String sql = "select * from otp_table where otp=? ";
//    String sql2 = "select * from reference_id where refid=? ";

    
    public boolean otp_authenticate(String otp )
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user,psw);
            PreparedStatement st = con.prepareStatement(sql);
//            PreparedStatement st2 = con.prepareStatement(sql2);

            st.setString(1, otp);
//            st2.setString(1, refid);
            
            ResultSet rs = st.executeQuery();
//            ResultSet rs2 = st2.executeQuery();

            
//            if(rs2.next())
//            {   
                if(rs.next())
                {
                    return true;
                }
                
//            }
            
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }        
        return false;
        
    }   
}
