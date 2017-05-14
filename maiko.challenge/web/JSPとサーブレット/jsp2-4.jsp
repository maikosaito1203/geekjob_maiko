<%-- 
    Document   : jsp2-4
    Created on : Apr 8, 2017, 5:21:16 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP 2-4</title>
    </head>
    <body>
    <%!
    Integer getSome(Integer x, Integer y, boolean type){
        
        if (type){
            return x * y * x * y;
        
        }
        else{
            return x * y;
        }
        /*
        booleanの時は==を省略できる！
        if(type) = if(type==true)
        if(!type) = if(type==false)
        */    
    }
    
    Integer getSome(Integer x, boolean type){    
        return getSome(x, 5, type);
    }
    Integer getSome(Integer x, Integer y){    
        return getSome(x, y, false);
    }

    %>
    <%
    out.print(getSome(5, 2, true)+"<br>");
    out.print(getSome(5, 300, false)+"<br>");
    out.print(getSome(5, false)+"<br>");
    out.print(getSome(5, 40)+"<br>");
    %>
    </body>
</html>
