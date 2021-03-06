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
public class JavaDB操作10 extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        response.setCharacterEncoding("UTF-8");
        
        Connection db10 = null;
        PreparedStatement ps1 = null;
        ResultSet rs1 = null;
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db10 = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db", "maiko.saito", "muginoumi");
            
            String strid = request.getParameter("ID");
            int id = Integer.parseInt(strid);
            
            ps1 = db10.prepareStatement("delete from profiles where profilesid=?");
            ps1.setInt(1, id);
            int rs2 = ps1.executeUpdate();  // 戻り値は"何行実行したか"。
            
            if(rs2>0){
                out.print("正常に削除されました。");
            } else {
                out.print("そのID番号はありません。");
            }
           
            ps1.close();
            db10.close();
            
        
        }catch (Exception e){
            out.print("ERROR"+ e.toString());
        }finally{
            if(ps1 != null)
                try{ db10.close();
        } catch (Exception e2){
                out.print("ERROR2"+ e2.getMessage());
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
