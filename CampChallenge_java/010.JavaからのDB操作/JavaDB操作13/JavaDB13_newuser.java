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
public class JavaDB13_newuser extends HttpServlet {

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
        
        Connection db13 = null;
        PreparedStatement ps1 = null;
        ResultSet rs1 = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db13 = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db", "maiko.saito", "muginoumi");
            
            String id = request.getParameter("userid");
            String pass = request.getParameter("password");
            
            ps1 = db13.prepareStatement("insert into zaikouser (userid, password) values (?,?)");
            ps1.setString(1, id);
            ps1.setString(2,pass);
            ps1.executeUpdate();
            
            ps1 = db13.prepareStatement("select * from zaikouser where userid = ?");
            ps1.setString(1,id);
            rs1 = ps1.executeQuery();
            
            while(rs1.next()){
                out.print("下記登録されました。"+"<br>"+"ユーザーID："+rs1.getString("userid")+"<br>"+"パスワード；"
                        +rs1.getString("password")+"<br>"+"<br>");
                out.print("<a href='/maiko.challenge/javaDB/JavaDB13-userstart.jsp'>ログイン画面へ</a>");
                
                
            }
            rs1.close();
            ps1.close();
            db13.close();
            
        } catch(SQLException sql){
            out.print("SQL ERROR"+sql.toString());            
        } catch(Exception e){
            out.print("ERROR"+e.toString());
        }finally{
            if(rs1 != null){
                try{
                    db13.close();
                }catch(Exception e2){
                    out.print("ERROR 2"+e2.toString());
                }
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
