/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package payment_data;

import static com.sun.tools.javac.resources.CompilerProperties.Fragments.Static;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Dell
 */
public class money_check_class
{
     String url = "jdbc:mysql://localhost:3306/banking";
    String user = "root";
    String psw = "Soham@2001";
    
//    String sql = "select * from security where security_pin=?";
        
    public static double balance = 25000.75;
    public static double temp;

    public boolean Authenticate_money(String money_check ) 
    {
        try 
        {
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection(url, user,psw);
//            PreparedStatement st = con.prepareStatement(sql);
//   
//            st.setString(1, secret_code);
//            
//            ResultSet rs = st.executeQuery();
//            
//            if(rs.next())
//            {
//                return true;
//            }
            
// --------------------------------------------------------------------------------------------
            

            double money_enter = Double.parseDouble(money_check);
            
            
           if(balance < money_enter)
            {
                return false;
            }
            else
            {
//                balance = balance - money_enter; 
                return true;
            }
            
// --------------------------------------------------------------------------------------------

        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }        
        return false;
        
    }
    
    public double rest_money(String money_check2 ) 
    {            
            double money_enter2 = Double.parseDouble(money_check2);
            
            balance = balance - money_enter2;
           
            return balance;
    }
            
// --------------------------------------------------------------------------------------------

     
//---------------------------------------------------------------------------------------------
}  
    
 

        

