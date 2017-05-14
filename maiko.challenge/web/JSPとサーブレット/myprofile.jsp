<%-- 
    Document   : myprofile
    Created on : Apr 8, 2017, 4:04:18 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>my profile</title>
    </head>
    <body>
        <%!
        String getMyName(){
            return "名前：齊藤麻衣子";
        }
        
        String getMyBirthday(){
            return "誕生日：12月3日";
        }
        
        String getComment(){
            return"自己紹介：私はサッカーが好きです。";
        }
        %>
        <%
        int i =0;
        while(i<10){
            out.print(getMyName()+"<br>");
            out.print(getMyBirthday()+"<br>");
            out.print(getComment()+"<br>"+"<br>");
            i++;
        }
        %>
        
    </body>
</html>
