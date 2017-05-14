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
public class JavaDB操作2 extends HttpServlet {

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
        
        Connection c1 = null;
        
        /* 下記に全く関係ないメモ☆
            transaction という機能を使うと、実効制限がかけられる
        */
        
        try{
            
        Class.forName("com.mysql.jdbc.Driver").newInstance();
                         
        c1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db", "maiko.saito", "muginoumi");
        Statement stmt = c1.createStatement();
        
        
        String sql1 = "insert into profiles (name) value('齊藤麻衣子')";
        int num = stmt.executeUpdate(sql1); //insert の時はupdateを使用。update でインサートを実行。
        
        String sql = "select * from profiles where name='齊藤麻衣子'";
        ResultSet drs = stmt.executeQuery(sql);
        
        while (drs.next()){
            out.print("新しく入力されました。"+drs.getString("name")+"<br>");
        }
        
        drs.close();
        
        //まとめて入力
        String sql2 = "insert into profiles value (2,'鈴木 茂','090-1122-3344',37,'1987-08-12')";
        int num2 = stmt.executeUpdate(sql2);
        
        ResultSet rset = stmt.executeQuery("select * from profiles");
        
        while(rset.next()){
            out.print(rset.getString(1)+rset.getString(2)+"<br>");
        }
        rset.close();
        
        
        // ?を使ってまとめて入力。
        PreparedStatement ps = null;  
        String sql10 = "INSERT INTO profiles values (?, ?, ?, ?, ?)";
        ps = c1.prepareStatement(sql10);
        ps.setInt(1,5);
        ps.setString(2,"高橋清");
        ps.setString(3,"090-9900-1234");
        ps.setInt(4, 24);
        ps.setString(5, "2000-12-24");
        
        int num10 = ps.executeUpdate(); //insertを実行する。
        
        
        //新しいテーブルを作り、重複しているデータを削除して、元のテーブルと入れ替える。
        String sql3 = "CREATE TABLE temp_table as SELECT * FROM profiles GROUP BY profilesid, name";
        int num3 = stmt.executeUpdate(sql3);
        
        String sql4 = "drop table profiles";
        int num4 = stmt.executeUpdate(sql4);
        
        String sql5 = "alter table temp_table rename to profiles";
        int num5 = stmt.executeUpdate(sql5);
        
       
                
        
        
        c1.close();
        
        }catch (Exception all){
            out.print("エラーが発生しました。"+all.toString());
            
        }finally{
            if(c1 != null){
                try{
                    c1.close();
                }catch (Exception all2){
                    out.print("エラーが発生しました。"+all2.getMessage());
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
