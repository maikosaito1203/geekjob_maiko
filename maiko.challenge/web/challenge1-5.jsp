<%-- 
    Document   : challenge1-5
    Created on : Apr 5, 2017, 2:09:58 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   
    <body>
         <%
    int a = 1;
    if(a==1){out.print("1です！");}
    else if(a==2){out.print("プログラミングキャンプ！");}
    else {out.print("その他です！");}
    %>
      
    </body>
</html>
