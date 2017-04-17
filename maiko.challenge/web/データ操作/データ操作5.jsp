<%-- 
    Document   : データ操作5
    Created on : Apr 17, 2017, 3:40:49 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "javax.servlet.http.HttpSession, java.util.*, java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%-- 入力された名前・性別・趣味を記憶し、次にアクセスした際に記録されたデータを初期値として表示
        つまり、セッションを使って履歴を残す。
        --%>
        <% 
        HttpSession hs = request.getSession();
         //セッションの取得をする。
         
        String n = (String)hs.getAttribute("Name");
        String s = (String)hs.getAttribute("Sex");
        String h = (String)hs.getAttribute("Hobby");
      
        
        
         //初回起動時にnullが出てしまうので空文字を設定する。
        if(n == null || s == null || h == null){
            n="";
            s="";
            h="";
     
        }
      
        %>
        
        <form action= "データ操作5.jsp" method="POST"> <%-- データ操作5.jspに入力内容をPostする。--%>
            名前☆<input type= "text" name= "txtName" size="20" maxlength="20" value="<%=n%>"><br><br>
            性別☆男<input type= "radio" name= "radioSample" value="男"<%if(s.equals("男")){out.print("checked");}%>>
                  女<input type= "radio" name= "radioSample" value="女"<%if(s.equals("女")){out.print("checked");}%>> <br><br>
            趣味☆<textarea name ="hobbyText" maxlength="150"><%=h%></textarea>
            <%-- <textarea name ="hobbyText" maxlength="150"<%=h%>></textarea> こうしてはいけない！--%>
            <input type= "submit" value="送信">
        </form>
            
        <%
        request.setCharacterEncoding("UTF-8");
        hs.setAttribute("Name", request.getParameter("txtName"));
        hs.setAttribute("Sex", request.getParameter("radioSample"));
        hs.setAttribute("Hobby", request.getParameter("hobbyText"));
        
        
        
        hs.getAttribute("Name");
        hs.getAttribute("Sex");
        hs.getAttribute("Hobby");
        //　ページ更新時に三種類履歴として表示。      
        
       
        %>  
            
            
            
            
    </body>
</html>
