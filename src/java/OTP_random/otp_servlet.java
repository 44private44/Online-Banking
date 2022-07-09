/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package OTP_random;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.mail.Session;
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
@WebServlet(name = "otp_servlet", urlPatterns = {"/otp_servlet"})
public class otp_servlet extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) 
        {
            /* TODO output your page here. You may use following sample code. */
//          
//            email_send obj_email = new email_send();
            
            otp_generate obj_otp = new otp_generate();
            
//            String message = obj_email.email_call();
            char[] temp = obj_otp.call_otp(4);
            
//            out.println(temp);
            String otp = String.valueOf(temp);
            
            HttpSession ses_otp = request.getSession();
            ses_otp.setAttribute("otpmove", otp);
            out.println(otp);
            
            
//            out.println(message);

//            out.println("successfully generate random otp"); 

//---------------------------------------Data base connect and insert otp and fetch otp---------------------------------
            
            String url = "jdbc:mysql://localhost:3306/banking";
            String user = "root";
            String psw = "Soham@2001";
            
            String sql = "insert into otp_random(otp,email,mobileno) values(?,?,?)";
            
//            String sql2 = "select 'signup_ifsc' from 'signup_dat' ";
            
            String otp_email = request.getParameter("otp_email");
            String otp_mobileno = request.getParameter("otp_form_number_input");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user,psw);
            PreparedStatement st = con.prepareStatement(sql);
            
            st.setString(1, otp);
            st.setString(2, otp_email);
            st.setString(3, otp_mobileno);
            
            st.executeUpdate();
            
            out.println("success");
//            response.sendRedirect("JSP/login.jsp");
            
            otp_servlet2_Dao obj_transfer = new otp_servlet2_Dao();
            if(obj_transfer.otp_enter(otp));
            {
                response.sendRedirect("JSP/login3.jsp");

            }
        
        }
         catch (Exception e) 
            {
                e.printStackTrace();
                response.sendRedirect("JSP/login.jsp");
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
