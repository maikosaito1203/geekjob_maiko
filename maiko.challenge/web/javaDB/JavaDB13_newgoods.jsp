<%-- 
    Document   : JavaDB操作13_newgoods
    Created on : Apr 25, 2017, 3:51:10 PM
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
        <form action="/maiko.challenge/JavaDB13_newgoods" method="post">
        新しい商品の情報を入力してください。<br><br>
            
            商品名：<input type="text" name="goodsname"><br><br>
            価格：<input type="text" name="price"><br><br>
            
            <input type="submit" value="登録">
        </form>
        
    </body>
</html>
