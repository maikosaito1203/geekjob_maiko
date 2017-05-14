<%-- 
    Document   : object_class_1_3_test_jsp
    Created on : Apr 11, 2017, 5:52:02 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="org.mypackage.sample.object_class_1_3"%>
<%-- クラスをインポート　--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         
       object_class_1_3 person2 = new object_class_1_3();
            person2.firstName = "Naomi";
            person2.lastName = "Saito";
            out.print(person2.getFullName());
            
        %>
        
    </body>
</html>
