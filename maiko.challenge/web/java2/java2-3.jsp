<%-- 
    Document   : java2-3
    Created on : Apr 5, 2017, 7:34:49 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <% long num = 1;
     for(int i =0; i<20; i++)
     {
       num = num*8;
     }
    out.print(num+"<br>");
     %>
     
     
        
        
        
        
    

