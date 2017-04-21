/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java.DB操作;

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
public class JavaDB操作9 extends HttpServlet {

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
        
        Connection db9 = null;
        PreparedStatement ps1 = null;
        ResultSet rs1 = null;
                
        
        try{
           
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db9 = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db", "maiko.saito", "muginoumi");
            
            String name = request.getParameter("name");
            String tell = request.getParameter("tell");
            String age = request.getParameter("age");
            String birthday = request.getParameter("year")+request.getParameter("month")+request.getParameter("day");
            //birthday はselectで複数値が取れるので足し算。
                       
            ps1 = db9.prepareStatement("insert into profiles (name, tell, age, birthday) values (?, ?, ?, ?)");
            ps1.setString(1, name);
            ps1.setString(2, tell);
            ps1.setString(3, age);
            ps1.setString(4,birthday);
            
            ps1.executeUpdate();
            
            ps1= db9.prepareStatement("select * from profiles");
            
            rs1 = ps1.executeQuery();
            while (rs1.next()){
                out.print("ID："+rs1.getString("profilesid")+",  "+"名前："+rs1.getString("name")+",  "
                +"電話番号："+rs1.getString("tell")+",  "+"年齢："+rs1.getString("age")+",  "
                +"生年月日"+rs1.getString("birthday")+"<br>");
            }
            rs1.close();
            ps1.close();
            db9.close();
            
        } catch(Exception e){
               out.print("ERROR"+e.toString()); 
            }finally{
            if(rs1 != null){
                try{ rs1.close();
            } catch(Exception e2){
                out.print("ERROR2"+e2.getMessage());
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
