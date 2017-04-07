<%-- 
    Document   : java2-10-2
    Created on : Apr 6, 2017, 6:51:48 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>java10-2 did my own</title>
    </head>
    <body>
        <%
        String atai1 =request.getParameter("atai");
        int atai2 = Integer.parseInt(atai1);
        
        out.print("元の値="+atai2+"<br>");
        out.print("1ケタの素因数=");
        
        int i =0;
        int k =0;
        int m =0;
        int p =0;
        
        
        while(atai2 %2==0){
            
            atai2 = atai2 /2;
            i++;
       
           
        while(atai2 %3==0){
             atai2=atai2/3;
             k++;
         }
        
        
        while(atai2 %5==0){
             atai2 = atai2/5;
             m++;
        }
       
        
        while(atai2 %7==0){
             atai2 = atai2/7;
             p++;
        }}
        
        if(i==0&k==0&m==0&p==0)
        out.print("無し");        
        else if(i==0&k==0)
        out.print(+5+"^"+m+"*"+7+"^"+p);
        else if(i==0&m==0)
        out.print(3+"^"+k+"*"+7+"^"+p);
        else if(i==0&&p==0)
        out.print(3+"^"+k+"*"+5+"^"+m);
        else if(i==0&k==0&m==0)
        out.print(7+"^"+p);
        else if(i==0&k==0&p==0)
        out.print(5+"^"+m);
        else if(i==0&m==0&p==0)
        out.print(3+"^"+k);
        else if(k==0&m==0)
        out.print(2+"^"+ i +"*"+7+"^"+p);
        else if(k==0&p==0)
        out.print(2+"^"+ i +"*"+5+"^"+m);
        else if (k==0&m==0&p==0)
        out.print(2+"^"+ i);
        else if (m==0&p==0)                
        out.print(2+"^"+ i +"*"+3+"^"+k);
        else if (k==0)
        out.print(2+"^"+ i +"*"+5+"^"+m+"*"+7+"^"+p);
        else if(m==0)
        out.print(2+"^"+ i +"*"+3+"^"+k+"*"+7+"^"+p);
        else if(p==0)
        out.print(2+"^"+ i +"*"+3+"^"+k+"*"+5+"^"+m);
        else if(i==0)
        out.print(3+"^"+k+"*"+5+"^"+m+"*"+7+"^"+p);
        else
        out.print(2+"^"+ i +"*"+3+"^"+k+"*"+5+"^"+m+"*"+7+"^"+p);
        
        if(atai2>1)
        out.print("<br>"+"その他="+atai2);
        else if(atai2 == 1)
        out.print("<br>"+"その他="+"1ケタの素数のみで構成");
        
      
     /*
    　http://localhost:8080/maiko.challenge/java2/java2-10-2.jsp?atai=143 
      入力値 143 のとき
      元の値=143
      1ケタの素因数=無し
      その他=143
      と表示される
      */
     


            %>
            
          
            
    </body>
</html>
