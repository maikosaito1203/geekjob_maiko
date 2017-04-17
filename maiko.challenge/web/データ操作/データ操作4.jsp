<%-- 
    Document   : データ操作4
    Created on : Apr 17, 2017, 1:13:19 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "javax.servlet.http.HttpSession, java.util.*, java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          Date time = new Date();
         
          HttpSession hs = request.getSession();
          hs.setAttribute("LastLogintime", time);
          
          out.print("最後のログインは、"+ hs.getAttribute("LastLogintime") );
          
          
        %>
    </body>
</html>
