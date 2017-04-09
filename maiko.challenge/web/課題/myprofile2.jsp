<%-- 
    Document   : myprofile2
    Created on : Apr 9, 2017, 10:48:00 AM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>myprofile2</title>
    </head>
    
        <%!
            String getMyprofile (){
            return "名前:齊藤麻衣子"+"<br>"+"誕生日:12月3日"+"<br>"+"自己紹介:私はサッカーが好きです"+"<br>"+"<br>"; 
        }
            Boolean getType(){
            return true;
        }

        %>
        
        <%
            String profile = getMyprofile();
            Boolean type = getType();
            
            if(type){
                int i = 0;
                while(i<10){
                    out.print(profile);
                    i++;
                }
                out.print("この処理は正しく実行できました");
                }else {
                out.print("正しく実行できませんでした");
            }
        
        
        
        %>
        
        
        
        
    
</html>
