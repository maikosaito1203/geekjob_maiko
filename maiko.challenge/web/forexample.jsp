<%-- 
    Document   : forexample
    Created on : May 10, 2017, 11:10:08 AM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<%@page import = "java.text.*" %>


<!DOCTYPE html>
<html>
   <%
   Calendar birthday = Calendar.getInstance();
   
    out.println("[2] 年を表示 : " + birthday.get(birthday.YEAR)); //現在の年を表示
    out.print("<br>"+"<br>");
    birthday.set(1950, 01, 01);
    out.println(birthday.get(birthday.YEAR)); //1950 を表示
   
   
   
   
   
   %>
</html>
