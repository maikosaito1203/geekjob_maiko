<%-- 
    Document   : jsp2-3
    Created on : Apr 8, 2017, 4:34:16 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jsp2-3</title>
    </head>
    <body>
        <%!
        String getNumber(int num){
            if(num%2==0){
              return "偶数です。";
            } else {
              return "奇数です。";
            }
        }
        %>
         <%
         
         out.print(getNumber(33));
         //33を入力したときに　奇数です。  と表示される。
         %>
    </body>
</html>
