<%--
  Created by IntelliJ IDEA.
  User: ltt
  Date: 19-3-8
  Time: 下午6:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" import ="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/lose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Gossip 微博</title>
  <%--<link rel="stylesheet" href="css/index.css" type="text/css">--%>
</head>
<body>
<div class="leftPanel">
  <img src='caterpillar.png' alt='Gossip 微博'/>
</div>
<div>
  <h1>Gossip ... XD</h1>
  <ul>
    <li>谈天说地不奇怪
    <li>分享讯息也可以
    <li>随意写写表心情
  </ul>
</div>
<div>
  <a href='register.jsp'>还不是会员?</a><p>
  <div style='color: rgb(255,0,0);'>
       ${requestScope.error}</div>
  <form method='post' action='login.do'>
    <table bgcolor='#cccccc'>
      <tr>
        <td colspan='2'>会员登录</td>
      </tr>
      <tr>
        <td>名称: </td>
        <td><input type='text' name='username' value="${param.username}"></td>
      </tr>
      <tr>
        <td>密码: </td>
        <td><input type='password' name='password'></td>
      </tr>
      <tr>
        <td colspan='2' align='center'><input type='submit' valuse='登入'></td>
      </tr>
      <tr>
        <td colspan='2'><a href ='forgot.html'>忘记密码?</a></td>
      </tr>
    </table>
  </form>
</div>
</body>
</html>
