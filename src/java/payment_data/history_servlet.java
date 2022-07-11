/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package payment_data;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
@WebServlet(name = "history_servlet", urlPatterns = {"/history_servlet"})
public class history_servlet extends HttpServlet {

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
        
            
            String sql = "select * from success_transfer_data where id='101'";
             
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user,psw);
//            PreparedStatement st = con.prepareStatement(sql);
            Statement st = con.createStatement();
            
            ResultSet rs = st.executeQuery(sql);
            
            String account_no = null;
            String money = null;
            String rest_money = null;
            
            while(rs.next())
            {
               account_no = rs.getString("account_no");
               money = rs.getString("money");
               rest_money = rs.getString("rest_money");
                
            }
            
            request.setAttribute("account_no_to", account_no);
            request.setAttribute("money", money);
            request.setAttribute("rest_money", rest_money);
 
            request.getRequestDispatcher("JSP/transaction_history.jsp").forward(request, response);
            
//            RequestDispatcher rd = request.getRequestDispatcher("success_servlet2");
//            rd.include(request, response);
           
        }
        
        catch (Exception e) 
        {
            e.printStackTrace();
            response.sendRedirect("HTML/login_error.html");
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
