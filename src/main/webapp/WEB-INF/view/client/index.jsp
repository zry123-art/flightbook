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

    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">航班订票系统管理平台</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">富强</a></li>
            <li class="layui-nav-item"><a href="">文明</a></li>
            <li class="layui-nav-item"><a href="">民主</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">和谐</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="<%=path%>/img/lp.jpg" class="layui-nav-img">
                    ${user.u_name}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="updateInfo.do" target="view_window">个人资料</a></dd>
                    <dd><a href="">密码修改</a></dd>
                </dl>
            </li>
            <li id="quitDiv" class="layui-nav-item"><a href="/login.do" onclick="javascript:return confirm('确认退出吗')">注销</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">航班系统管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">航班信息管理</a></dd>
                        <dd><a href="javascript:;">航班动态管理</a></dd>
                        <dd><a href="http://www.ceair.com/" target="view_window">订票</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item ">
                    <a class="" href="javascript:;">票务管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">机票管理</a></dd>
                        <dd><a href="javascript:;">订单管理</a></dd>
                        <dd><a href="javascript:;">审核退票</a></dd>
                        <dd><a href="javascript:;">售票统计</a></dd>
                        <dd><a href="http://www.baidu.com" target="view_window">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">用户信息管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">用户管理</a></dd>
                        <dd><a href="javascript:;">用户操作记录</a></dd>
                        <dd><a href="http://www.baidu.com" target="view_window">超链接</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px; height: 620px ;">
            <iframe name="view_window" id="iframe" style="border: 0px;" width="100%" height="100%"></iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © 张荣宇 2020年3月24日- 2020年3月28日
    </div>
</div>
<script type="text/javascript" src="<%=path%>/js/jquery-3.4.1.js"></script>
<script src="<%=path%>/layui/layui.all.js"></script>
<script src="<%=path%>/layui/layui.js"></script>
<script type="text/javascript">
    // var layer = layui.layer;//弹出层对象
    //
    // $("#quitDiv").click(function () {
    //     layer.confirm('确认退出吗？',{icon: 3, title:'提示'},function(index)){
    //
    //     }
    // });
</script>
</body>
</html>

