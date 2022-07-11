/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package signon_final;

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
@WebServlet(name = "signon_servlet1", urlPatterns = {"/signon_servlet1"})
public class signon_servlet1 extends HttpServlet {

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
            String url = "jdbc:mysql://localhost:3306/banking";
            String user = "root";
            String psw = "Soham@2001";
        
            String sql = "insert into signon_final(userid, password, name, captcha) values(?,?,?,?)";
            
            String signon_userid1 = request.getParameter("signon_userid");
            String signon_password2 = request.getParameter("signon_password");
            String signon_name3 = request.getParameter("signon_name");
            String signon_capcha4 = request.getParameter("signon_captcha");

            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user,psw);
            PreparedStatement st = con.prepareStatement(sql);
            
            st.setString(1, signon_userid1);
            st.setString(2, signon_password2);
            st.setString(3, signon_name3);
            st.setString(4, signon_capcha4);
 
            st.executeUpdate();
            
            out.println("success");
            
// ---------------------------------------------------------------------------------------------------------------------

            signon_varify objDao = new signon_varify();
                
            if(objDao.signon_varify_method(signon_userid1, signon_password2))
            {
                    out.print("success1");

                   signon_varify2 objDao2 = new signon_varify2();
                   if(objDao2.signon_varify2_method(signon_capcha4))
                   {
                        out.print("success2");
                        response.sendRedirect("JSP/payment1_dashboard.jsp");
 
                   }
                   else
                   {
                        out.print("error1");
                        response.sendRedirect("HTML/login_error.html"); 
                   }
            }
            else
            {
                out.print("error2");
                response.sendRedirect("HTML/login_error.html");   

            }
            
        }
        
        catch (Exception e) 
        {
            e.printStackTrace();
            response.sendRedirect("HTML/home.html");
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
