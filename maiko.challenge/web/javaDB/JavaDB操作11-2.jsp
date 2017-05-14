<%-- 
    Document   : JavaDB操作11-2
    Created on : Apr 24, 2017, 4:48:20 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           Connection db11 = null;
           PreparedStatement ps1 = null;
           ResultSet rs1 = null;
        
           String id = request.getParameter("ID");
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db", "maiko.saito", "muginoumi");
            
            ps1 = db11.prepareStatement("select profilesid from profiles where profilesid =?");
            ps1.setString(1, id);
            
            rs1 = ps1.executeQuery();
            
            if (rs1.next()){
                out.print("次へを押してください。");
                } else {
                out.print("そのID番号はありません。");
            }
            
       
       %>
    </body>
</html>
