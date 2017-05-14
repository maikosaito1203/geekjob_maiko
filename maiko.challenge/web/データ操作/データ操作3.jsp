<%-- 
    Document   : データ操作3
    Created on : Apr 17, 2017, 11:24:33 AM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie, java.util.*, java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Date time = new Date();
        
        Cookie c = new Cookie("LastLogin", time.toString());
        response.addCookie(c);
        
                
        Cookie cs[] = request.getCookies();
        if(cs != null){
            for(int i = 0; i < cs.length; i++){
                if(cs[i].getName().equals("LastLogin")){
                    out.print("最後のログインは、"+cs[i].getValue());
                    break;
                }
            }
                
        }
        
        %>
    </body>
</html>
