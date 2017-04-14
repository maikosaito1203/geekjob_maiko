<%-- 
    Document   : 標準クラス3
    Created on : Apr 14, 2017, 3:40:07 PM
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
            
            Calendar cal = Calendar.getInstance();
            
            cal.set(2016, 10, 4, 10, 0, 0);
            Date cal1 = cal.getTime();
            
            int yy = cal.get(Calendar.YEAR);
            int MM = cal.get(Calendar.MONTH)+1;
            int dd = cal.get(Calendar.DAY_OF_MONTH);
            int hh = cal.get(Calendar.HOUR);
            int mm = cal.get(Calendar.MINUTE);
            int ss = cal.get(Calendar.SECOND);
            
            out.print(yy+"年"+MM+"月"+dd+"日"+hh+"時"+mm+"分"+ss+"秒");
            //out.print("<br>"+cal1.getTime()); //timestamp型で表示
            
            
            
            
            %>
            
        </h1>
    </body>
</html>
