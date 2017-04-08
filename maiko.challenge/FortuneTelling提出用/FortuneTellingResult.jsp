<%-- 
    Document   : FortuneTellingResult
    Created on : Apr 8, 2017, 11:32:25 AM
    Author     : maiko
--%>

<%@page import="org.mypackage.sample.ResultData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            ResultData data = (ResultData)request.getAttribute("DATA");
            %>
            
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fortune Telling Result via Servlet</title>
    </head>
    <body>
        <%
            if(data!=null){
                out.print("<h1>あなたの"+data.getD()+"の運勢は、"+data.getLuck()+"です！</h>");
            }
        
        
        %>
        
        
    </body>
</html>
