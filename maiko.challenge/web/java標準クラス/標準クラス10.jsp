<%-- 
    Document   : 標準クラス10
    Created on : Apr 16, 2017, 12:00:02 PM
    Author     : maiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import= "java.util.*, java.text.*, java.io.*,
        java.util.logging.Logger, java.util.logging.FileHandler,
        java.util.logging.Level, java.util.logging.SimpleFormatter"%> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            final Logger logger = Logger.getLogger("SampleLogging");
            
            FileHandler filehandler = new FileHandler("C:\\Users\\maiko\\Documents\\geekjob_maiko\\log.txt",false);
            //FileHandler = log.txt を作れ。
            
            filehandler.setFormatter(new SimpleFormatter()); //filehandler にtextで入力。
            // SimpleFormatter = text formatに整える。
            
            logger.addHandler(filehandler); //.addは使えないので　addHandler を使用。
            
            logger.log(Level.INFO, "開始します。");
            
                int num1=2;
                int num2=3;
                int num3=5;
                final int num4=10;

                out.print(num1++ - 2+"<br>" );//0
            logger.log(Level.INFO, "一つ目終了");
                out.print(num2-- + 5+"<br>");//8
            logger.log(Level.INFO, "二つ目終了");    
                out.print(--num3-2+"<br>");//2
            logger.log(Level.INFO, "三つ目終了");    
                out.print(num4-3+"<br>");//7
            
            logger.log(Level.INFO, "全て終了しました。"+"<br>"+"<br>");
            
           filehandler.flush(); //強制的にファイルに書き込む
           filehandler.close(); //ログファイルをクローズ　ファイルは必ず開けたら閉める！
        
        File txt = new File("C:\\Users\\maiko\\Documents\\geekjob_maiko\\log.txt");
        
        FileReader filereader = new FileReader(txt);
        
        BufferedReader bufferedreader = new BufferedReader(filereader);
        
        String str;
        while((str=bufferedreader.readLine()) != null){
            out.print(str+"<br>");
        }
        
        bufferedreader.close();
         
            %>
    </body>
</html>
