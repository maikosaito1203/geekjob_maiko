<%-- 
    Document   : 標準クラス6
    Created on : Apr 14, 2017, 6:16:18 PM
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
            String myAdd = "smoacickeor@yahoo.co.jp";
            out.print("@は"+myAdd.indexOf("@")+"番目です。"+"<br>");
            // 11番目とわかる。
            
            out.print(myAdd.substring(11)); //@以降を表示

            
            %>
        </h1>
    </body>
</html>
