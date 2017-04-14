<%-- 
    Document   : 標準クラス2
    Created on : Apr 14, 2017, 3:30:20 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<%@page import = "java.text.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><h1>
       <% Date date = new Date();
       
            Calendar today = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("YYYY年MM月dd日HH時:mm分:ss秒");
            String sdate = sdf.format(date);
            out.print(sdate);
       
       %>
       </h1>
    </body>
</html>
