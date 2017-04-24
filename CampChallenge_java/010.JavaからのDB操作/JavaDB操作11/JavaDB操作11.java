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
public class JavaDB操作11 extends HttpServlet {

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
        
        response.setCharacterEncoding("UTF-8"); //ユーザーに表示するデータに関する設定。
        request.setCharacterEncoding("UTF-8"); //ユーザーが入力してくれたデータに関する設定。
        
        PrintWriter out = response.getWriter();
        
        Connection db11 = null;
        PreparedStatement ps1 = null;
        ResultSet rs1 = null;
        
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db11 = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db", "maiko.saito", "muginoumi");
            
            String strid = request.getParameter("ID");
            int id = Integer.parseInt(strid);
            String name = request.getParameter("name");            
            String tell = request.getParameter("tell");
            String strage = request.getParameter("age");
            int age = Integer.parseInt(strage);
            String birthday = request.getParameter("year") + request.getParameter("month") + request.getParameter("day");
            
            out.print(id+name+tell+age+birthday);
            
            ps1 = db11.prepareStatement("update profiles set name=?, tell=?, age=?, birthday=? where profilesid =?");
            ps1.setString(1, name);
            ps1.setString(2, tell);
            ps1.setInt(3, age);
            ps1.setString(4, birthday);
            ps1.setInt(5, id);
                        
            ps1.executeUpdate();
            
            ps1 = db11.prepareStatement("select * from profiles where profilesid = ?");
            ps1.setInt(1, id);
            rs1 = ps1.executeQuery();
            while (rs1.next()){
                out.print("以下のように変更されました"+"<br>"+"ID："+rs1.getString("profilesid")+",  "+"名前："+rs1.getString("name")+",  "
                +"電話番号："+rs1.getString("tell")+",  "+"年齢："+rs1.getString("age")+",  "
                +"生年月日"+rs1.getString("birthday")+"<br>");
            }
           
            
            ps1.close();
            db11.close();
            
        }  catch(SQLException sql) {
            out.println("接続時にmsqlエラーが発生しました："+sql.toString());
        } catch (Exception e) {
            out.println("接続時にエラーが発生しました："+e.toString());
        } finally {
            if (ps1 != null) {
                try {
                    ps1.close();
                } catch (Exception e){
                    out.println(e.toString());
                }
            if (db11 != null) {
                try {
                    db11.close();
                } catch (Exception e){
                    out.println(e.toString());
                }
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
