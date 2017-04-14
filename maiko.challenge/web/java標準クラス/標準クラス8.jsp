<%-- 
    Document   : 標準クラス8
    Created on : Apr 14, 2017, 7:03:28 PM
    Author     : maiko
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*"%>
<%@page import = "java.text.*"%>
<%@page import = "java.io.*"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%
            File text = new File("C:\\Users\\maiko\\Documents\\geekjob_maiko\\標準クラス8用テキスト.txt");
            
            FileWriter fw = new FileWriter(text);
            
            BufferedWriter bw =  new BufferedWriter(fw);
            bw.write("私の名前はサイトウマイコです。");
            bw.newLine();
            bw.write("サッカーと旅行がすきです。");
            bw.newLine();
            bw.write("4月から、Javaの勉強をしています。");
            bw.close();

//out.print(application.getRealPath("標準クラス8用テキスト.txt"));
            %></h1>
    </body>
</html>
