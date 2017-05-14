package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.http.HttpSession;
import jums.JumsHelper;
import jums.UserDataBeans;

public final class insertconfirm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write(' ');
      out.write('\n');
      out.write(' ');
      out.write('\n');
      out.write('\n');

    HttpSession hs = request.getSession(); //セッションを取得します。存在しなければ生成します。 bym
    request.setCharacterEncoding("UTF-8");//セッションに格納する文字コードをUTF-8に変更
    String accesschk = request.getParameter("ac");//insert.jsp で送信された隠されたセッションオブジェクトを取得。
            
            /* session.getAttribute("ac") = insert.java で生成されたオブジェクト
            　それと、accesschkが同じでなければ・・・ */
            if(accesschk ==null || (Integer) hs.getAttribute("ac")!=Integer.parseInt(accesschk)){
                throw new Exception("不正なアクセスです");
            }
            //request.getAttributeメソッドで、入力データを取り出す。
            UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JUMS登録確認画面</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
 if(!udb.getName().equals("") && !udb.getYear().equals("")
                && !udb.getMonth().equals("")&& !udb.getDay().equals("")
                && !udb.getType().equals("")&& !udb.getTell().equals("")
                && !udb.getComment().equals("")){ 
      out.write("\n");
      out.write("                \n");
      out.write("        <h1>登録確認</h1>\n");
      out.write("        名前:");
      out.print( udb.getName());
      out.write("<br>\n");
      out.write("        生年月日:");
      out.print( udb.getYear()+"年"+udb.getMonth()+"月"+udb.getDay()+"日");
      out.write("<br>\n");
      out.write("        種別:");
      out.print( udb.getType());
      out.write("<br>\n");
      out.write("        電話番号:");
      out.print( udb.getTell());
      out.write("<br>\n");
      out.write("        自己紹介:");
      out.print( udb.getComment());
      out.write("<br>\n");
      out.write("        上記の内容で登録します。よろしいですか？\n");
      out.write("        <form action=\"insertresult\" method=\"POST\">\n");
      out.write("            <input type=\"submit\" name=\"yes\" value=\"はい\">\n");
      out.write("        </form>\n");
      out.write("       \n");
      out.write("    ");
 }else{ 
      out.write("\n");
      out.write("        <h1>入力が不完全です</h1>\n");
      out.write(" \n");
      out.write("   ");

    if(udb.getName().equals("")){
        out.print("名前が未入力です。"+"<br>"+"<br>");
}   if(udb.getYear().equals("") || udb.getMonth().equals("") || udb.getDay().equals("")){
        out.print("生年月日が未入力です。"+"<br>"+"<br>");
}   if(udb.getType().equals("")){
        out.print("種別が未選択です。"+"<br>"+"<br>");          
}   if(udb.getTell().equals("")){
        out.print("電話番号が未入力です。"+"<br>"+"<br>");
}   if(udb.getComment().equals("")){
        out.print("自己紹介文が未入力です。"+"<br>"+"<br>");
}
        
     } 
      out.write("\n");
      out.write("     \n");
      out.write("    \n");
      out.write("        <form action=\"insert\" method=\"POST\">\n");
      out.write("            <input type=\"submit\" name=\"no\" value=\"登録画面に戻る\">\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        <br>\n");
      out.write("        ");
      out.print(JumsHelper.getInstance().home());
      out.write(' ');
      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
