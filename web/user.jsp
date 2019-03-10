<%--
  Created by IntelliJ IDEA.
  User: ltt
  Date: 19-3-10
  Time: 上午10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" import="java.util.*,java.text.*,cc.openhome.model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/lose.dtd">
<html>
<head>
    <meta content='text/html;charset=UTF-8' http-equiv='content-type'>
    <title>Gossip 微博</title>
    <%-- <link rel='stylesheet' href='../css/member.css' type='text/css'>--%>
</head>
<body>
<%
    List<Blah> blahs = (List<Blah>) request.getAttribute("blahs");
    if (blahs != null){
%>
<div class='leftPanel'>
    <div>
    <img src='web/caterpillar.png' alt='Gossip 微博'/>
    </div>
    <br><br><h2>${requestScope.username} 的微博</h2>
</div>
<table style='text-align: left; width: 510px; height: 88px;' boder='0' cellpadding='2' cellspacing='2'>
    <thead>
    <tr>
        <th>
            <hr>
        </th>
    </tr>
    </thead>
    <tbody>
    <%
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.FULL, DateFormat.FULL, Locale.TAIWAN);
        for (Blah blah : blahs) {
    %>
    <tr>
        <td style='vertical-align: top;'>
            <%= blah.getUsername() %><br>
            <%= blah.getTxt() %><br>
            <%= dateFormat.format(blah.getDate())%>
            <hr>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
<hr style='width: 100%; height: 1px;'>
<%
    }
    else
    {
%>
<h1 style='color: rgb(255,0,0);'>
    ${requestScope.username }用户不存在</h1>
<%
    }
%>
</body>
</html>
