/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package signon_final;

/**
 *
 * @author Dell
 */
public class signon_varify2
{
     public boolean signon_varify2_method(String captcha)
    {
        String temp  = "12Q5ZM";
        
        if(temp.equals(captcha))
        {
            return true;
        }
        else{
            return false;
        }
    }
     
}
