<%-- 
    Document   : 標準クラス9
    Created on : Apr 16, 2017, 10:54:19 AM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import= "java.util.*, java.text.*, java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            File txt = new File("C:\\Users\\maiko\\Documents\\geekjob_maiko\\標準クラス8用テキスト.txt");
            FileReader fr = new FileReader ((txt));
            BufferedReader br = new BufferedReader(fr);
            
             out.print(br.readLine()); //一行ずつ読み込み
             out.print(br.readLine());
             out.print(br.readLine());
             out.print(br.readLine()); //nullになる。
             out.print("<br>"+"<br>");
            
            
           
             String str;
             while((str=br.readLine()) != null){
             out.print(str);}       //まとめて読み込み。上のout.printの部分を消して表示させるとnullが消える。
                  
            br.close();
        
        
        
        
        %>
    </body>
</html>
