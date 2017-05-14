<%-- 
    Document   : java2-8-2
    Created on : Apr 6, 2017, 1:47:20 PM
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
        
        //ArrayList で2-8を作成してみた。
        
        <%@page import ="java.util.ArrayList"%>
        <%
            ArrayList<String>geek= new ArrayList<String>();
           geek.add("10");
           geek.add("100");
           geek.add("soeda");
           geek.add("hayashi");
           geek.add("-20");
           geek.add("118");
           geek.add("END");
           geek.set(2,"33");
           out.print(geek.get(2));
        
        %>
    </body>
</html>
