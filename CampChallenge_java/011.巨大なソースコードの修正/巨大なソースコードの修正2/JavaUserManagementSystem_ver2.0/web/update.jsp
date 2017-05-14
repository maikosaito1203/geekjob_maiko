<%@page import="jums.JumsHelper"%>
<%@page import="jums.UserDataDTO"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>

<%
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO udd = (UserDataDTO)request.getAttribute("resultData");
    
    Calendar birthday = Calendar.getInstance(); //birthday という名前のカレンダーオブジェクトを生成
    birthday.setTime(udd.getBirthday()); //　データベースのbirthdayがdate型なので、setTimeでbirthdayにデータベースの値をセットする。
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS変更画面</title>
    </head>
    <body>
    <form action="UpdateResult" method="POST">
        名前:
        <input type="text" name="name" value=<%= udd.getName()%> <%-- value に<%= udd.getName()%>を追加--%>
        <br><br><br>

        生年月日:　
        <select name="year">
            <option value="">----</option>
            <% for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>" <% if(birthday.get(Calendar.YEAR) == i){out.print("selected = \"selected\"");}%>><%=i%></option>
            <% } %>
        </select>年
        <select name="month">
            <option value="">--</option>
            <% for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>" <% if(birthday.get(Calendar.MONTH)+1 == i){out.print("selected = \"selected\"");}%>><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="">--</option>
            <% for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"<%if(birthday.get(Calendar.DATE)== i){out.print("selected = \"selected\"");}%>><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br> <%-- 種別のchecked の追加。--%>
            
        <input type="radio" name="type" value="1" <%if(udd.getType() == 1){out.print("checked");}%>>エンジニア<br> 
        <input type="radio" name="type" value="2" <%if(udd.getType() == 2){out.print("checked");}%>>営業<br>
        <input type="radio" name="type" value="3" <%if(udd.getType() == 3){out.print("checked");}%>>その他<br>
       
        <br>

        電話番号:
        <input type="text" name="tell" value="<%= udd.getTell()%>"> <%-- value に<%= udd.getTell()%>を追加--%>
        <br><br>

        自己紹介文
        <br>
        <%-- <%= udd.getComment() %> を追加。bym --%>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%= udd.getComment() %></textarea><br><br>
        
        <input type="hidden" name="id" value="<%= udd.getUserID()%>"> <%-- 隠してuserIDを送る bym --%>
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <%--　戻るボタンの追加。bym--%>
        <br><br>
        <form>
            <INPUT type="button" onClick='history.back();' value="戻る">
        </form>
        <br>
        <%=jh.home()%>
        
    </body>
</html>
