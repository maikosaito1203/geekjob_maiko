<%-- 
    Document   : JavaDB操作8
    Created on : Apr 20, 2017, 4:57:21 PM
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
        <form action ="/maiko.challenge/JavaDB__8" method="post">
            <%-- postする先のURLに合わせる！！！ --%>
            <h1>
                検索したい名前を入力してください。<br>
                <input type="text" name="textname" size="20" maxlength="20">
            <input type="submit" value="検索">
        </form>
        </h1>
    </body>
</html>
