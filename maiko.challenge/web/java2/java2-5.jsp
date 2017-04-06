<%-- 
    Document   : java2-5
    Created on : Apr 6, 2017, 10:23:53 AM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>java2-5</title>
    </head>
    <body>
        <%
            int A = 0;
            for(int i = 0 ; i<100; i++){
                A = A +1+i;
              }out.print( A );
            %>
            
    </body>
</html>
