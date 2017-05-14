<%-- 
    Document   : jsp2-7
    Created on : Apr 10, 2017, 1:05:29 PM
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
        <%!
           String[] getSome(int id){
            
            String[] none ={null};
            String[] saito = {"3110","齊藤麻衣子","12月3日生","埼玉県"};
            String[] ito = {"110","伊藤麻衣子","1月4日生","東京都"};
            String[] kato = {"710","加藤麻衣子","2月5日生","神奈川県"};
            
                                
            switch(id){
                case 3110: none=saito;
                break;
                case 110:  none=ito;
                break;
                case 710:  none=kato;
                break;
                }
                return none;
            }
           
        %>
        <%
            String[] prof = getSome(3110);
            
            out.print("名前: "+prof[1]+"<br>"+"生年月日: "+prof[2]+"<br>"+"住所: "+prof[3]);
            
        
        
        %>
        
        
    </body>
</html>
