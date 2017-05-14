/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaDB;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author maiko
 */
public class JavaDB操作12 extends HttpServlet {

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
        
        Connection db12 = null;
        PreparedStatement ps1 = null;
        ResultSet rs1 = null;
        
        
        try{
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           db12 = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db", "maiko.saito", "muginoumi");
           
           String name = request.getParameter("name");
           String age = request.getParameter("age");
           String birth = request.getParameter("year")+request.getParameter("month")+request.getParameter("day");
           
           ps1 = db12.prepareStatement("select * from profiles where name like ? and age like ? and birthday like ?");
           // %% *パーセントの間に何もいれないと、「全て」の意味になる！
           
           ps1.setString(1, "%"+name+"%");
           ps1.setString(2, "%"+age+"%"); //int型とstring型で検索条件が変わる！
           ps1.setString(3, "%"+birth+"%");
           
           
           
           rs1 = ps1.executeQuery();
           while (rs1.next()){
                out.print("検索結果"+"<br>"+"ID："+rs1.getString("profilesid")+",  "+"名前："+rs1.getString("name")+",  "
                +"電話番号："+rs1.getString("tell")+",  "+"年齢："+rs1.getString("age")+",  "
                +"生年月日"+rs1.getString("birthday")+"<br>");
            }
           
           rs1.close();
           ps1.close();
           db12.close();
           
            
        }catch (SQLException sql){
            out.print("SQL ERROR"+ sql.toString());
        }catch (Exception e){
            out.print("EROOR"+ e.toString());
        }finally{
            if(rs1 != null){
                try {
                    db12.close();
                }catch(Exception e2){
                    out.print("e2 ERROR"+ e2.getMessage());
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
