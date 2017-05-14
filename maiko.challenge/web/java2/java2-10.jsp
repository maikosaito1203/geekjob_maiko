<%-- 
    Document   : java2-10
    Created on : Apr 6, 2017, 3:30:52 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>java2-10</title>
    </head>
    <body>
        <%@page import = "java.util.ArrayList"%>
        <%
            String atai1=request.getParameter("atai");
            ArrayList <Integer> sosu = new ArrayList<Integer>();
            sosu.add(2);
            sosu.add(3);
            sosu.add(5);
            sosu.add(7);
         
        int atai2 = Integer.parseInt(atai1);
        
        out.print("元の値="+atai2+"<br>");
        out.print("1ケタの素因数=");
        
        int j = 0;
        for (int val : sosu){
            int i = 0;
            while(atai2%val==0){
             atai2 = atai2/val;
             i++;}
            if(i>0){
                if(j>0){
                    out.print("*");
                }
            j++;
            out.print(val+"^"+i);}}
        
        if(atai2>10){
            out.print("<br>"+"その他="+atai2);}
        
        /*
        http://localhost:8080/maiko.challenge/java2/java2-10.jsp?atai=1234567890
        入力値が1234567890　のとき、
        元の値=1234567890
        1ケタの素因数=2^1*3^2*5^1
        その他=13717421
        と表示される。  */
        
        %>
        
        
    </body>
</html>
