<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2020/3/12
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>">

    <title>管理员登录</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script type="text/javascript" src="<%=path%>/js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/login.css">
</head>
<body>
<div class="box">
    <h1>管理员登录</h1>
    <form action="login.do" method="post">
        <div class="box1">
            <img src="<%=path%>/img/user.png" />&nbsp;&nbsp;
            <input type="text" name="uName" placeholder="账号"/>
        </div>
        <div class="box1">
            <img src="<%=path%>/img/password.png" />&nbsp;&nbsp;
            <input type="password" name="pwd" placeholder="密码" pattern="^.{6,16}" title="密码必须是6~16位字符"/>
        </div>
<%--        <input type="checkbox" name="checkIsUseCookie"/>七天之内记住我--%>
        <div class="box2">
            <input type="submit" value="登录"  />
        </div>
    </form>
</div>
</body>
<script src="<%=path%>/layui/layui.all.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery-3.4.1.js"></script>
</html>

