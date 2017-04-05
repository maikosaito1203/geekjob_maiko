<%-- 
    Document   : java2-1
    Created on : Apr 5, 2017, 6:53:00 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>java2-1</title>
    </head>
    <body>
     <%
        int num =2; String message = "";
         switch(num){
         case 1:
         message = "one";
         break;
         case 2:
         message = "two";
         break;
         default:
         message = "想定外の値です。";
         break;
     }
         out.println(message);
         %>
         
            
    </body>
</html>
