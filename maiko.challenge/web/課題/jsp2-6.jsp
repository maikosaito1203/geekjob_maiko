<%-- 
    Document   : jsp2-6-2
    Created on : Apr 10, 2017, 11:42:23 AM
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
        <%!
           String[] getSomepro(){
           String[] somepro = {"3110","齊藤麻衣子","12月3日生","埼玉県"};
             return somepro;  
        }
       
        %>
        
        <%
           String[] info = getSomepro();
           
           out.print("名前: "+info[1]+"<br>"+"生年月日: "+info[2]+"<br>"+"住所: "+info[3]);
           
        %>
    </body>
</html>
