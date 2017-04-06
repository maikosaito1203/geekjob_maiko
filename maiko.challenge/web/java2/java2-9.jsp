<%-- 
    Document   : java2--9
    Created on : Apr 6, 2017, 1:18:05 PM
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
        <%@page import="java.util.HashMap"%>
        <%
         HashMap<String,String>geek= new HashMap<String,String>();
         
         geek.put("1","AAA");
         geek.put("hello","world");
         geek.put("soeda","33");
         geek.put("20","20");
         
         //試しにすべて表示。
         out.print(geek.get("1")+"<br>");
         out.print(geek.get("hello")+"<br>");
         out.print(geek.get("soeda")+"<br>");
         out.print(geek.get("20")+"<br>");
        %>
    </body>
</html>
