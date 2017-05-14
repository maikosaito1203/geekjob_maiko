<%-- 
    Document   : challenge1-6
    Created on : Apr 5, 2017, 2:46:49 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge1-6</title>
    </head>
    <body>
        <%
    //クエリストリングを利用して「S」=総額・「K」=個数・「Z」=商品種別のパラメータを渡す。
    String S = request.getParameter("sogaku");
    String K = request.getParameter("kosu");
    String Z = request.getParameter("shubetsu");
    
    //取得したパラメータが文字列の為、数値に変換する。
    int S1 = Integer.parseInt(S);
    int K1 = Integer.parseInt(K);
    int Z1 = Integer.parseInt(Z);
    
/*商品種別のパラメータ取得して表示する。
    1の場合「雑貨」、2の場合「生鮮食品」、3の場合「その他」。*/
    if(Z1 == 1){
        out.println("商品名：雑貨"+"<br>");
    }else if(Z1 == 2){
        out.println("商品名：生鮮食品"+"<br>");
    }else if(Z1 == 3){
        out.println("商品名：その他"+"<br>");
    }
    

//総額と個数から単価を表示する。

    out.println("単価："+S1/K1+"円"+"<br>");


/*総額3000円以上の購入で4%、総額5000円以上の購入で5%、それ以外だと0ポイントを付与する。
    付与するポイントを表示する。*/
    if((S1>=3000)&&(S1<5000)){
        out.println("付与ポイント："+S1*4/100+"ポイント");
    }else if(S1>=5000){
        out.println("付与ポイント："+S1*5/100+"ポイント");
    }else{
        out.println("付与ポイント："+0+"ポイント");
    }
  /*「例」生鮮食品(2)を10個、総額3500円購入した場合。
     http://localhost:8080/maiko.challenge/challenge1-6.jsp?sogaku=3500&kosu=10&shubetsu=2
    <答え>
        商品名：生鮮食品
        単価：350円
        付与ポイント：140ポイント
    */
 
  /* 「例2」雑貨(1)を20個、総額5500円購入した場合。
  http://localhost:8080/maiko.challenge/challenge1-6.jsp?sogaku=5500&kosu=20&shubetsu=1
  <答え>
        商品名：雑貨
        単価：275円
        付与ポイント：275ポイント
   */
  
%> 
    </body>
</html>
