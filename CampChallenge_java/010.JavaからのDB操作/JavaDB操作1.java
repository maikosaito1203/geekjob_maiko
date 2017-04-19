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
public class JavaDB操作1 extends HttpServlet {

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
        
        Connection db_con = null;
        PreparedStatement db_st= null;
        ResultSet db_data = null;
        PreparedStatement db_st2= null;
        ResultSet db_data2 = null;
        
        try{            
            Class.forName("com.mysql.jdbc.Driver").newInstance(); //必ず必要なコード。これで、mysqlのドライバーが使用可能になる。
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","maiko.saito","muginoumi");
            //windowsのjbdc用ポートはデフォルトで3306。
            
            db_st = db_con.prepareStatement("select name, profilesid from profiles");
            
            db_st2 = db_con.prepareStatement("select * from profiles where age=?");
            db_st2.setInt(1, 19); //一番目の？が19の時の意味。
            
            db_data = db_st.executeQuery(); //executeQuery =ResultSet 形式のものが帰ってくる。例①
            while (db_data.next()){ //next メソッドでデータの有無を確認。while データがとれていたら・・・
                out.print("ID:"+db_data.getInt("profilesid"));
                out.print("名前:"+db_data.getString("name")+"<br>"+"<br>");
                // 帰ってきたnameカラムのResultデータをString形式で名前：の後に表示してね。
            }
            db_data2 = db_st2.executeQuery(); //executeQuery = ResultSet 形式のものが帰ってくる。例②
            while (db_data2.next()){
                out.print(db_data2.getString("name"));
            }
            
            db_data.close();
            db_st.close();
            db_con.close(); //DBへの操作が終わったら必ずクローズ！
            
            
            
        } catch (SQLException e_sql){
            out.print("sqlでエラーが発生しました。"+ e_sql.toString());
        } catch (Exception e){
            out.print("エラーが発生しました。"+e.toString());
        } finally{
            if(db_con != null){
            try {db_con.close();    
            } catch(Exception e_con){
                    System.out.print(e_con.getMessage());
                    }    
        } 
       
    }}


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


