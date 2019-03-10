<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ltt
  Date: 19-3-9
  Time: 下午6:25
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN'>
<html>
<head>
    <meta content = 'text/html;charset=UTF-8' http-equiv='content-type'>
    <title>新增会员失败</title>
</head>
<body>
    <h1>新增会员失败</h1>
    <ul style='color: rgb(255, 0, 0);'>
<%
    List<String> errors = (List<String>) request.getAttribute("errors");
     for(String error : errors){
%>
    <li><%=error %></>li>
        <%
        }
%>
        </ul>
<a href = 'register.jsp'>返回注册页面</a>
</body>
</html>
