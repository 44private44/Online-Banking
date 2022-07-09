/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package signup_Dao;

import OTP_random.otp_generate;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Dell
 */
@WebServlet(name = "signup_userdata_servlet", urlPatterns = {"/signup_userdata_servlet"})
public class signup_userdata_servlet extends HttpServlet 
{

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) 
        {
//            out.print("hello this is soham.");
            /* TODO output your page here. You may use following sample code. */
            
                String userid = request.getParameter("signup_userid");
                String password1 = request.getParameter("signup_password1");
                String password2 = request.getParameter("signup_password2");
                String user_email = request.getParameter("signup_email");
                String user_accountno = request.getParameter("signup_accountno");
                String user_accounttype = request.getParameter("account_type");
                String user_ifsc = request.getParameter("signup_ifsc");
                String user_mobileno = request.getParameter("signup_mobileno");

                            out.println("success1");

                
                String url = "jdbc:mysql://localhost:3306/banking";
                String user = "root";
                String psw = "Soham@2001";
  
                String sql = "INSERT INTO signup_data"
           + "(signup_userid,signup_password,signup_confirm_password,signup_email,signup_accountno,signup_acoounttype,signup_ifsc,signup_mobileno)"
           + " VALUES (?,?,?,?,?,?,?,?)";
//             + " VALUES ('soham m2225odi','1000','1000','155525','5521','1555','65231','55151')";
                
                            out.println("success2");

                String sql2 = "INSERT INTO LOGIN1(Userid,Password) VALUES(?,?)";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user,psw);
                            out.println("success3");

            PreparedStatement st = con.prepareStatement(sql);
            PreparedStatement st2 = con.prepareStatement(sql2);
                               out.println("success4");

            
            st.setString(1, userid);
            st.setString(2, password1);
            st.setString(3, password2);
            st.setString(4, user_email);
            st.setString(5, user_accountno);
            st.setString(6, user_accounttype);
            st.setString(7, user_ifsc);
            st.setString(8, user_mobileno);
            
                                        out.println("success5");
            st.executeUpdate();
                                        
            st2.setString(1, userid);
            st2.setString(2, password1);
            
                                        out.println("success6");


            st2.executeUpdate();
                                        out.println("success7");

            out.println("success3");
           
            
            request.setAttribute("second_email",user_email);
            request.setAttribute("third_mono",user_mobileno);

            RequestDispatcher rd = request.getRequestDispatcher("signup_userdata_servlet2");
            rd.forward(request,response);
            
//            response.sendRedirect("signup_userdata_servlet2");
               

        }
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
