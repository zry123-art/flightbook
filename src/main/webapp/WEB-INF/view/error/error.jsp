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

    <title>管理平台</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script type="text/javascript" src="<%=path%>/js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css">
    <script src="<%=path%>/layui/layui.js"></script>
</head>
    <body>
        <div>
            <input type="hidden" id="errorMsg" value="${errorMsg}"/>
<%--            <input type="hidden" id="error_code" value="${res.code}">--%>
<%--            <input type="hidden" id="error_msg" value="${res.msg}">--%>

        </div>
        <script>
            alert(document.getElementById("errorMsg").value);
            // layer.alert($("#error_msg").value);
            history.go(-1);
        </script>
        <script type="text/javascript" src="<%=path%>/js/jquery-3.4.1.js"></script>


    </body>
</html>

