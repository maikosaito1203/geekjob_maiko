<%-- 
    Document   : データ操作2
    Created on : Apr 17, 2017, 10:47:44 AM
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
        <%
        request.setCharacterEncoding("UTF-8");
        
        String n = request.getParameter("txtName");
        String s = request.getParameter("radioSample");
        String h = request.getParameter("hobbyText");
        
        out.print("名前："+n+"<br>"+"性別："+s+"<br>"+"趣味："+h);
        %>
    </body>
</html>
