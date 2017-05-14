<%-- 
    Document   : JavaDB操作13-user
    Created on : Apr 25, 2017, 2:46:51 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/maiko.challenge/JavaDB13_logincheck" method="post">
            <h1>＜ログイン画面＞<br></h1>
            下記情報を入力してください。<br><br>
            ユーザーID：<input type="text" name="userid" maxlength="20"><br><br>
            パスワード：<input type="text" name="password" maxlength="20"><br><br>
            <input type="submit" value="ログイン"><br><br>
            <a href="/maiko.challenge/javaDB/JavaDB13_newuser.jsp">新規ユーザー登録はこちら</a>
        </form>
    </body>
</html>
