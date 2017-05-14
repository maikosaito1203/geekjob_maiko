/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaDB;


import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


/**
 *
 * @author maiko
 */
public class JavaDB13_logincheck extends HttpServlet {

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
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        
        Connection db13_u = null;
        PreparedStatement ps1 = null;
        ResultSet rs1 = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db13_u = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db", "maiko.saito", "muginoumi");
            
            String id = request.getParameter("userid");
            String pass = request.getParameter("password");
            
            ps1 = db13_u.prepareStatement("select * from zaikouser where userid=? and password=?");
            ps1.setString(1, id);
            ps1.setString(2, pass);
            
            rs1= ps1.executeQuery();
            
            
            while(rs1.next()){
                RequestDispatcher disp = request.getRequestDispatcher("/javaDB/JavaDB13_goodsfind.jsp");
                disp.forward(request, response);
            }
                RequestDispatcher disp = request.getRequestDispatcher("/javaDB/JavaDB13-userstart.jsp");
                disp.forward(request, response);
            
            
            rs1.close();
            ps1.close();
            db13_u.close();
            
        }catch(SQLException sql){
            out.print("SQL ERROR"+sql.getSQLState());
        }catch(Exception e){
            out.print("ERROR"+e.toString());
        }finally{
            try{
                if(rs1 != null)
                    rs1.close();
                } catch(Exception e2){
                        out.print("ERROR 2"+e2.getMessage());
                        }
            
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
