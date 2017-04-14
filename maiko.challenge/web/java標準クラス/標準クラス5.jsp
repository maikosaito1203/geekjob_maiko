<%-- 
    Document   : 標準クラス5
    Created on : Apr 14, 2017, 5:48:14 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%
            String myName="齊藤麻衣子";
            
            out.print("齊藤麻衣子は"+"<br>");
            out.print(myName.length()+"文字と"+"<br>"); //名前の文字数を表示
            out.print(myName.getBytes("UTF-8").length+"バイトです。");
            
            
            %>
        </h1>
    </body>
</html>
