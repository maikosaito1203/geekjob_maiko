<%-- 
    Document   : 標準クラス4
    Created on : Apr 14, 2017, 4:13:48 PM
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
    <body>
        <h1>
            <%
                Date date = new Date();
                
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日hh時mm分ss秒");
                Date date1 = sdf.parse("2015年1月1日 0時0分0秒");
                Date date2 = sdf.parse("2015年12月31日 23時59分59秒");
                
                long dateto = date1.getTime();
                long datefrom = date2.getTime();
                
                out.print(date1.getTime()+"<br>"+date2.getTime()+"<br>"); // timestamp型にて表示。
                out.print("差分ミリ秒は"+(datefrom - dateto)); // ()を使って優先順位を決定。
            
            
            
            
            
            %>
        </h1>
    </body>
</html>