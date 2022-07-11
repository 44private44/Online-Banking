/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package payment_data;

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

/**
 *
 * @author Dell
 */
@WebServlet(name = "transfer_servlet_main", urlPatterns = {"/transfer_servlet_main"})
public class transfer_servlet_main extends HttpServlet {

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
        
            String sql = "insert into transfer_data(account_number, transfer_money) values(?,?)";
            String sql2 = "insert into success_transfer_data(id, account_no, money, rest_money) values(?,?,?,?)";

            
            String account_no = request.getParameter("transfer_account_number");
            String money_enter = request.getParameter("transfer_money");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user,psw);
            PreparedStatement st = con.prepareStatement(sql);
            PreparedStatement st2 = con.prepareStatement(sql2);


// --------------------------------------------------------------------------------------------

            money_check_class obj_check = new money_check_class();
            
            if(obj_check.Authenticate_money(money_enter))
            {
                out.println("success money");  
                            
                st.setString(1, account_no);
                st.setString(2, money_enter);

                double rest_balance = obj_check.rest_money(money_enter);
                String final_rest =  Double.toString(rest_balance);
                
                st2.setString(1, "101");
                st2.setString(2, account_no);
                st2.setString(3, money_enter);
                st2.setString(4, final_rest);
                
                st.executeUpdate();
                st2.executeUpdate();
                
                out.println("success");              
//
                response.sendRedirect("JSP/security_pin.jsp");
              
            }
            else
            {
                out.println("error in money");
                 response.sendRedirect("HTML/login_error.html");    
            }

// --------------------------------------------------------------------------------------------

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
