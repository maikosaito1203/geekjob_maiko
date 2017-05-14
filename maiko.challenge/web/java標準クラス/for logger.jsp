<%-- 
    Document   : 標準クラス10
    Created on : Apr 16, 2017, 12:00:02 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import= "java.util.*, java.text.*, java.io.*,
        java.util.logging.Logger, java.util.logging.FileHandler,
        java.util.logging.Level,java.util.logging.ConsoleHandler.*"%> 


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            // logger の理解のために作成。
            
         
            Date date = new Date();
            
            final Logger logger = Logger.getLogger("標準クラス10");
            
            logger.log(Level.INFO, date+"   開始します。");  // dateを書くと下のコンソールにも出力される。
            
                int num1=2;
                int num2=3;
                int num3=5;
                final int num4=10;

                out.print(num1++ - 2+"<br>" );//0
            logger.log(Level.INFO, "一つ目終了");
                out.print(num2-- + 5+"<br>");//8
            logger.log(Level.INFO, "二つ目終了");    
                out.print(--num3-2+"<br>");//2
            logger.log(Level.INFO, "三つ目終了");    
                out.print(num4-3+"<br>");//7
            
            logger.log(Level.INFO, "全て終了しました。"+"<br>"+"<br>");
            
         
         
            %>
    </body>
</html>
