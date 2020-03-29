<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2020/3/26
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>注销账户</title>
    <script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>

<body>
<%
    //清除工程中的session
    session.removeAttribute("user");
    //直接清除工程中所有的session
    session.invalidate();
%>
<script type="text/javascript">
    top.location.href="view/index.jsp";
</script>
</body>
</html>

