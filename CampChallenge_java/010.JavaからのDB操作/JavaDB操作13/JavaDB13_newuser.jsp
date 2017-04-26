<%-- 
    Document   : JavaDB操作13_newuser
    Created on : Apr 25, 2017, 3:57:10 PM
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
        <form action="/maiko.challenge/JavaDB__13_newuser" method="post">
            <h1>＜ユーザー新規登録画面＞<br></h1>
            下記情報を入力してください。<br><br>
            ユーザーID：<input type="text" name="userid" maxlength="20"><br><br>
            パスワード：<input type="text" name="password" maxlength="20"><br><br>
            <input type="submit" value="登録"><br><br>
        </form>
    </body>
</html>
