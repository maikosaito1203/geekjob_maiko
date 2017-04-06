<%-- 
    Document   : java2-8
    Created on : Apr 6, 2017, 11:47:15 AM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>java2-7</title>
    </head>
    <body>
    <%
     String[] some = {"10", "100", "soeda", "hayashi", "-20", "118", "END"};
     //確認のため表示
     for(int i=0; i<7; i++){
          out.print(some[i]+"<br>");}
     
     //確認のため変更後を1行開けて表示
     some[2] = "33";
      out.print("<br>"+some[2]);

    %>    
    </body>
</html>
