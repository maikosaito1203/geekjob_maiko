<%-- 
    Document   : newjsp
    Created on : 2017/04/10, 13:20:27
    Author     : soeda-r
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            // クエリストリングから、分解する数値を取得
            String strKazu = request.getParameter("kazu");
            Integer nKazu = Integer.parseInt(strKazu);
            
            // 1ケタの素数を用意
            int[] numbers = {2,3,5,7};
            // 割れた回数を管理
            int[] counts = {0,0,0,0};
            
            // ループして、各素数のチェック
            for(int i=0;i<numbers.length;i++) {
                if ( (nKazu % numbers[i]) == 0) {
                    // 素数で割れるなら
                    // 割れるだけ割る
                    while(nKazu % numbers[i] == 0) {
                        nKazu = nKazu / numbers[i];
                        counts[i] += 1;
                    }
                }
            }
            
            // 結果を画面に展開
            boolean firstFlg = true;
            for(int j=0;j<numbers.length;j++) {
                if (counts[j] > 0) {
                    // 割れているものだけ出す
                    for(int k=0;k<counts[j];k++) {
                        if (firstFlg == false) {
                            out.print("x");
                        } else {
                            firstFlg = false;
                        }
                        
                        out.print(numbers[j]);
                    }
                }
            }
            
            if (nKazu > 1) {
                if (firstFlg == false) {
                    out.print("x");
                }
                
                out.print(nKazu);
            }
        %>
    </body>
</html>
