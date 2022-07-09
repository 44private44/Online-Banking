/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package signup_Dao;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author Dell
 */
public class signup_otp_Dao
{
     public boolean otp_enter(String otp )
    {
        try 
        {
            String url = "jdbc:mysql://localhost:3306/banking";
            String user = "root";
            String psw = "Soham@2001";
            
            String sql = "insert into otp_table(otp) values(?)";
            
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user,psw);
            PreparedStatement st = con.prepareStatement(sql);
            
            st.setString(1, otp);
            
            st.executeUpdate();
            
            out.println("success final otp");
            
            return true;
//            response.sendRedirect("JSP/login3.jsp");
        }
            catch (Exception e) 
             {
                 e.printStackTrace();
             }
        return false;
    }
}
