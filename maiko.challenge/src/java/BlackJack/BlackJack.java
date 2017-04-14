/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BlackJack;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BlackJack.Human;
import java.util.ArrayList;


/**
 *
 * @author maiko
 */
public class BlackJack extends HttpServlet {

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

   try {
       
        Dealer dealer = new Dealer();
        User user = new User();
      
        
        dealer.setcard(dealer.deal());
        user.setcard(dealer.deal());
        
        //使用メソッド抽出
        dealer.open();
        user.open();
        dealer.checkSum();
        user.checkSum();
        
        
        while(user.checkSum()==true){
            user.setcard(dealer.hit());
        }
       
        while(dealer.checkSum()==true){
            dealer.setcard(dealer.hit());
                    
        }
        
       
        out.println("<h1>");
        
        
        

            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title></title>");            
            out.println("</head>");
            out.println("<body>");
            
        out.print("あなたのカードは"+user.myCards.toString()+","
                +"合計は"+user.open()+"です。"+"<br>");
        out.print("ディーラーのカードは"+dealer.myCards.toString()+","
                +"合計は"+dealer.open()+"です。"+"<br>"+"<br>");
        
        
        
        if (user.open() == 21 && (dealer.open() == 21))
        out.print("☆Ｄｏｕｂｌｅ ＢＬＡＣＫ　ＪＡＣＫ☆"+"<br>"+"ＤＲＡＷ"); 
                
        else if (user.open() == 21 && dealer.open()>=22)
        out.print("☆Ｕｓｅｒ’ｓ ＢＬＡＣＫ　ＪＡＣＫ☆"+"Ｄｅａｌｅｒ’ｓ　ＢＵＲＳＴ！！"
                +"  "+"ヤッターヾ(≧▽≦)ﾉ　　あなたの勝ちです！");
        
        else if (user.open() == 21&& dealer.open()<21)
        out.print("☆Ｕｓｅｒ’ｓ ＢＬＡＣＫ　ＪＡＣＫ☆"+"  "+"ヤッターヾ(≧▽≦)ﾉ　　あなたの勝ちです！");
                        
        else if (dealer.open() == 21 && user.open()>=22)
        out.print("☆Ｄｅａｌｅｒ’ｓ ＢＬＡＣＫ　ＪＡＣＫ☆"+"Ｕｓｅｒ’ｓ　ＢＵＲＳＴ！！"
                +"  "+"残念(´;ω;｀)あなたの負けです。。。");
        
        else if (dealer.open() == 21&& user.open()<21)
        out.print("☆Ｄｅａｌｅｒ’ｓ ＢＬＡＣＫ　ＪＡＣＫ☆"+"  "+"残念(´;ω;｀)あなたの負けです。。。");
        
        else if(user.open()>=22 && dealer.open()<21)
        out.print("Ｕｓｅｒ’ｓ　ＢＵＲＳＴ！！"+"  "+"残念(´;ω;｀)　あなたの負けです。。。");
        
        else if (user.open()>=22 && dealer.open()>=22)
        out.print("Double Burst"+"  "+"ＤＲＡＷ");
        
        else if (dealer.open()>=22 && user.open()<21)
        out.print("Ｄｅａｌｅｒ’ｓ　ＢＵＲＳＴ！！"+"  "+"ヤッターヾ(≧▽≦)ﾉ　　あなたの勝ちです。");
        
        else if (user.open() > dealer.open()&&user.open()<21&&dealer.open()<21)
        out.print("ヤッターヾ(≧▽≦)ﾉ　　あなたの勝ちです！");
                    
        else if (user.open() < dealer.open()&&user.open()<21&&dealer.open()<21)    
        out.print("残念(´;ω;｀)　　あなたの負けです。。。");
        
        else if (user.open() == dealer.open())    
        out.print("ＤＲＡＷ");
        
        
        
        
        
        out.println("</h1>");
            
            out.println("</body>");
            out.println("</html>");
        } catch(Exception e) {
            out.print(e.getMessage());
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
