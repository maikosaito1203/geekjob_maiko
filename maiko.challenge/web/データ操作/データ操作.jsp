<%-- 
    Document   : データ操作
    Created on : Apr 16, 2017, 5:32:37 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>データ操作</title>
    </head>
    <body>
        <form action= "./sample.jsp" method="post">
            名前☆<input type= "text" name= "txtName" size="20" maxlength="20" ><br><br>
            性別☆男<input type= "radio" name= "radioSample" value="男">
                 女<input type= "radio" name="radilSample" value="女"><br><br>
            趣味☆<textarea name ="hobbyText" maxlength="150"></textarea>
            <input type= "submit" value="送信">
        </form>
        
        
        
        
    </body>
</html>
