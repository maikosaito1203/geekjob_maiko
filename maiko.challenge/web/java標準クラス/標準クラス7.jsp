<%-- 
    Document   : 標準クラス7
    Created on : Apr 14, 2017, 6:36:00 PM
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
            String words = "「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」";
            
            String word1 = words.replace("I","い"); //一度目のreplace
            String word2 = word1.replace("U","う"); //二度目のreplace
            
            out.print(word2+"<br>");
            
            
            String result = words.replace("I","い").replace("U","う"); //　これで1度にreplaceできる！
             out.println(result);           
            
            
            
            
            
            
            
            
            %></h1>
    </body>
</html>
