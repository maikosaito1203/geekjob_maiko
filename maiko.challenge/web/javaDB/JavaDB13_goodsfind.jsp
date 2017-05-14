<%-- 
    Document   : JavaDB操作13_goodsfind
    Created on : Apr 25, 2017, 3:33:43 PM
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
        <form action="/maiko.challenge/JavaDB13_goodsfind" method="post">
        検索したい商品情報を入力してください。<br><br>
            商品ID：<input type="text" name="goodsid"><br><br>
            商品名：<input type="text" name="goodsname"><br><br>
            価格：<input type="text" name="price"><br><br>
            <input type="submit" value="検索"><br><br>
            <a href="/maiko.challenge/javaDB/JavaDB13_newgoods.jsp">新規商品の登録はこちら</a>
            </form>
        
        <form name="Logout" method="post" action="/maiko.challenge/javaDB/JavaDB13_logout.jsp">
            <br><br><input type="submit" value="ログアウト">
        </form>
    </body>
</html>
