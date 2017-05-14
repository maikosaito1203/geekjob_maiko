<%-- 
    Document   : java標準クラス1
    Created on : Apr 14, 2017, 11:44:29 AM
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
        
            <%    Date date = new Date();
            
            out.print("①　"+date+"　「date型で表示」　"+"<br>"+"<br>");
            out.print("②　"+date.getTime()+"　「timestamp型で表示」　"+"<br>"+"<br>");
            
            Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("YYYY年MM月dd日HH時mm分ss秒");
            String sdate = sdf.format(date);
            out.print("③　"+sdate+"<br>"+"　「SimpleDateFormatに直してdate型で表示」　"+"<br>"+"<br>");
            
            Calendar cal2 = Calendar.getInstance();
            cal2.set(2016,0,1,0,0,0);
            Date calpast = cal2.getTime();
            out.print("④　"+calpast+"<br>"+"　「calendarクラスに指定の日付を入れて、date型で表示」　"+"<br>"+"<br>");
            out.print("④-1　"+calpast.getTime()+"<br>"+"　「calendarクラスに指定の日付を入れて、timestamp型で表示」　"
                    +"<br>"+"<br>");
            
            
            SimpleDateFormat pdf = new SimpleDateFormat("yyyy年MM月dd日hh時mm分ss秒");
            Date pastdate = pdf.parse("2016年1月1日 0時0分0秒"+"<br>");
            out.print("⑤　"+pastdate+"<br>"+"　「SimpleDateFormatクラスに指定の日付を入れて、data型で表示」　"
                    +"<br>"+"<br>"); //Tue Dec 01 00:00:00 JST 2015 
            out.print("⑤-1　"+pastdate.getTime()+"<br>"+"　「SimpleDateFormatクラスに指定の日付を入れて、timestamp型で表示」　"
                    +"<br>"+"<br>");
            
        %>    
        </body>
</html>
