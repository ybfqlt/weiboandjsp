<%--
 Created by IntelliJ IDEA.
 User: ltt
 Date: 19-3-9
 Time: 下午7:37
 To change this template use File | Settings | File Templates.
--%>
<%@page import="java.util.*,java.text.*,cc.openhome.model.UserService"%>
<%@ page import="cc.openhome.model.Blah" %>
<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN'>
<html>
<head>
    <meta content = 'text/html;charset=UTF-8' http-equiv='content-type'>
    <title>Gossip 微博</title>
    <%--<link rel='stylesheet' href='css/member.css' type='text/css'>--%>
</head>
<body>
<div class = 'leftPanel'>
    <img src = 'caterpillar.png'alt='Gossip 微博' />
    <br><br>
    <a href= 'logout.do?username="${ sessionScope.login }'>
    登出 ${ sessionScope.login }</a>
</div>
<form method='post' action='message.do'>
    分享新鲜事...<br>
    <%
        String blabla=(String)request.getParameter("blabla");
        if(blabla==null){
            blabla="";
        }else{
    %>
    信息要在140字以内<br>
    <%
        }
    %>
    <textarea cols='60' rows='4' name='blabla'>${requestScope.blabla}</textarea><br>
            <%= blabla %>
    </textarea><br>
    <button type = 'submit'>送出</button>
</form>
<table style='text-align: left; width:510px; height: 88px;'
       boder='0' cellpadding='2' cellspacing='2'>
    <thead>
    <tr>
        <th><hr></th>
    </tr>
    </thead>
    <tbody>
    <%
       DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.FULL,DateFormat.FULL,Locale.TAIWAN);
       List<Blah> blahs = (List<Blah>) request.getAttribute("blahs");
       //if (blahs != null)
       for(Blah blah : blahs){
    %>
    <tr>
        <td style='vertical-align : top;'>
            <%=blah.getUsername() %><br>
            <%=blah.getTxt()%><br>
            <%=dateFormat.format(blah.getDate())%>
            <a href = 'delete.do?message=<%=blah.getDate().getTime() %>'>删除</a>
            <hr>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>
<hr style='width:100%;height:1px;'>
</body>
</html>
