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
public class JavaDB13_goodsfind extends HttpServlet {

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
        
        
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db13 = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db", "maiko.saito", "muginoumi");
            
            String goodsid = request.getParameter("goodsid");
            String goodsname = request.getParameter("goodsname");
            String price = request.getParameter("price");
            
            ps1 = db13.prepareStatement("select * from goods where goodsid=? or goodsname=? or price=?");
            ps1.setString(1, goodsid);
            ps1.setString(2, goodsname);
            ps1.setString(3, price);
            
            rs1 = ps1.executeQuery();
            
            if(rs1.next()){
                out.print("検索結果"+"<br>"+"<br>"+"商品ID："+rs1.getString("goodsid")+"<br>"+
                        "商品名："+rs1.getString("goodsname")+"<br>"+"価格："+rs1.getString("price"));
            } else { out.print("その商品はありません。"+"<br>"+"<br>");
            }
            out.print("<br>"+"<br>"+"<a href='/maiko.challenge/javaDB/JavaDB13_goodsfind.jsp'>商品検索画面へ</a>");
            
            rs1.close();
            ps1.close();
            db13.close();
              
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
