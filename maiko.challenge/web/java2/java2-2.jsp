<%-- 
    Document   : java2-2
    Created on : Apr 5, 2017, 7:13:55 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>java2-2</title>
    </head>
    <body>
        <%
         char key = 'A'; String message = "";
         switch(key){
             case 'A':
             message = "英語";
             break;
             case 'あ':
             message = "日本語";
             break;
         }
         out.print(message);
         %>
         
    </body>
</html>
