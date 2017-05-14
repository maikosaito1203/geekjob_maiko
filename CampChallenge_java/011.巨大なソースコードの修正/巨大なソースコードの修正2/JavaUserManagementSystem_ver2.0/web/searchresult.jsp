<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO"
        import="java.util.ArrayList"%>
<%
    JumsHelper jh = JumsHelper.getInstance();
    
    ArrayList<UserDataDTO> udd = (ArrayList<UserDataDTO>)request.getAttribute("resultData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS検索結果画面</title>
    </head>
    <body>
        <h1>検索結果</h1>
        <table border=1>
            <tr>
                <th>名前</th>
                <th>生年月日</th> <%-- 生年→生年月日に変更 --%>
                <th>種別</th>
                <th>登録日時</th>
            </tr>
        <% for(UserDataDTO val : udd){%>
            <tr>
                <td><a href="ResultDetail?id=<%= val.getUserID()%>"><%= val.getName()%></a></td>
                <td><%= val.getTell() %></td>
                <td><%= val.getType() %></td>
                <td><%= val.getComment() %></td>
            </tr>
            <% } %>
        </table><br><br>
    </body>
    
    <%=jh.home()%>
</html>
