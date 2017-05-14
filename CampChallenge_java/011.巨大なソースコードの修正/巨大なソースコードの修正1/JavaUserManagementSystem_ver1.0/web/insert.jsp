<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%@page import= "java.util.*, java.text.*"%>
<%@page import="jums.UserDataBeans"%>
<%
        HttpSession hs = request.getSession(); //セッションを取得します。存在しなければ生成します。jspでは書かなくてもOK bym
     
        //session.getAttributeメソッドで、入力データを取り出す。
        //セッションにデータを入れたので、request.getAttributeではない！！　初回時はすべてnullのはずなので、その対応。
        UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb"); 
      
        if(udb == null){
            udb = new UserDataBeans();
        }
        if(udb.getName() == null){
            udb.setName("");
        }
        if(udb.getYear() == null){
            udb.setYear("");
        }
        if(udb.getMonth() == null){
            udb.setMonth("");
        }
        if(udb.getDay() == null){
            udb.setDay("");
        }
        if(udb.getType() == null){
            udb.setType("");
        }
        if(udb.getTell() == null){
            udb.setTell("");
        }
        if(udb.getComment() == null){
            udb.setComment("");
        }



%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
    <form action="insertconfirm" method="POST">
        名前:
        <input type="text" name="name" value="<%= udb.getName()%>">
        <br><br>

        生年月日:　
        <select name="year">
            <option value="<%out.print(udb.getYear());%>"> <%out.print(udb.getYear());%></option>
            <%
            for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>"> <%=i%> </option>
            <% } %>
        </select>年
        <select name="month">
            <option value="<%out.print(udb.getMonth());%>"><%out.print(udb.getMonth());%></option>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="<%out.print(udb.getDay());%>"> <%out.print(udb.getDay());%></option>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        電話番号:
        <input type="text" name="tell" value="<%out.print(udb.getTell());%>">
        <br><br>
        
        種別:
        
        <br>
        
        <input type="radio" name="type" value="1" <%if(udb.getType() != null && udb.getType().equals("1")){out.print("checked");}%>>エンジニア<br> 
        <input type="radio" name="type" value="2" <%if(udb.getType() != null && udb.getType().equals("2")){out.print("checked");}%>>営業<br>
        <input type="radio" name="type" value="3" <%if(udb.getType() != null && udb.getType().equals("3")){out.print("checked");}%>>その他<br>
        <br>
        
        <br>
        <%-- もしくは、上記のnullチェックを、
        /*if(udb.getType() == null){
             udb.setType("");
        }*/
             にして、下記のように書く。上記が生きていると、「空文字が入っている」とみなされ、
             != null が適用されてしまう。
        
        <% if (udb.getType() != null){ %>
        <input type="radio" name="type" value="1" <%if(udb.getType().equals("1")){out.print("checked");}%>>エンジニア<br> 
        <input type="radio" name="type" value="2" <%if(udb.getType().equals("2")){out.print("checked");}%>>営業<br>
        <input type="radio" name="type" value="3" <%if(udb.getType().equals("3")){out.print("checked");}%>>その他<br>
        <% } else {%>
        <input type="radio" name="type" value="1">エンジニア<br> 
        <input type="radio" name="type" value="2">営業<br>
        <input type="radio" name="type" value="3">その他<br>
        <%}%>
        
        --%>
        
        <br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%out.print(udb.getComment());%></textarea><br><br>
        
        
        
        
        <%-- insert.javaで取得したセッションオブジェクト(名前 ac、値 ランダム整数)を非表示で送信　by m--%>
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>"> 
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
