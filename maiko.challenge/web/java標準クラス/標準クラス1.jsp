<%-- 
    Document   : 標準クラス1
    Created on : Apr 14, 2017, 3:18:17 PM
    Author     : maiko
--%>
<%@page import = "java.util.*" %>
<%@page import = "java.text.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <h1>
    <%    Date date = new Date();
    
    Calendar cal2 = Calendar.getInstance();
            cal2.set(2016,0,1,0,0,0);
            Date calpast = cal2.getTime();
           
            out.print(calpast.getTime()+"<br>"); // calendarクラスに指定の日付を入れて、timestamp型で表示
            
            
     SimpleDateFormat pdf = new SimpleDateFormat("yyyy年MM月dd日hh時mm分ss秒");
            Date pastdate = pdf.parse("2016年1月1日 0時0分0秒"+"<br>");
             
            out.print(pastdate.getTime()); // SimpleDateFormatクラスに指定の日付を入れて、timestamp型で表示
    %>
    </h1>
    
</html>
