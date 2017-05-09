<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %> <%-- JumsHelper をimport--%>
<%@page import="jums.UserDataBeans" %> <%-- UserDataBeans をimport bym--%>

<%
    HttpSession hs = request.getSession(); //セッションを取得します。存在しなければ生成します。 bym
    request.setCharacterEncoding("UTF-8");//セッションに格納する文字コードをUTF-8に変更
    
            //request.getAttributeメソッドで、入力データを取り出す。
            UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
        <%-- 名前が空欄でなければ・・・ bym →名前以外全てが空欄でなければに変更--%>
        
        <%  if( !udb.getName().equals("") && !udb.getYear().equals("") &&
                !udb.getMonth().equals("") && !udb.getDay().equals("") &&
                udb.getType() != null && !udb.getTell().equals("") && !udb.getComment().equals("")) {%>
                
        <h1>登録確認</h1>
        名前:<%= udb.getName()%><br>
        生年月日:<%= udb.getYear()+"年"+udb.getMonth()+"月"+udb.getDay()+"日"%><br>
        種別:<%= udb.getType()%><br>
        電話番号:<%= udb.getTell()%><br>
        自己紹介:<%= udb.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="submit" name="yes" value="はい">
        <%-- insert.javaで取得したセッションオブジェクト(名前 ac、値 ランダム整数)を非表示で送信　by m--%>
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            
        </form>
       
    <% }else{ %>
        <h1>入力が不完全です</h1>
 
   <%
    if(udb.getName().equals("")){
        out.print("名前が未入力です。"+"<br>"+"<br>");
}   if(udb.getYear().equals("") || udb.getMonth().equals("") || udb.getDay().equals("")){
        out.print("生年月日が未入力です。"+"<br>"+"<br>");
}   if(udb.getTell().equals("")){
        out.print("電話番号が未入力です。"+"<br>"+"<br>");
}   if(udb.getType() == null){
        out.print("種別が未選択です。"+"<br>"+"<br>");        
}   if(udb.getComment().equals("")){
        out.print("自己紹介文が未入力です。"+"<br>"+"<br>");
}
        
     } %>
     　　     
        <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        
        <br>
        <%=JumsHelper.getInstance().home()%> <%-- JumsHelperクラスのHomeという名前のメンバをget bym--%>
        
    </body>
</html>
