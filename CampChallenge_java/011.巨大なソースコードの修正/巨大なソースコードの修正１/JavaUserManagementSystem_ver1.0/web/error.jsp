<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jums.JumsHelper" %> <%-- JumsHelper をimport--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error</title>
    </head>
    <body>
        エラーが発生しました。以下の項目を確認してください。<br>
        <%=request.getAttribute("error")%>
        
        <br><br>
        <%=JumsHelper.getInstance().home()%> <%-- JumsHelperの中のHomeという名前のインスタンスをget --%>
        
    </body>
</html>
