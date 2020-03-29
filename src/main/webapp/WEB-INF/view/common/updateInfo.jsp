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
<script type="text/javascript" src="<%=path%>/js/jquery-3.4.1.js"></script>
<script src="<%=path%>/layui/layui.all.js"></script>
<script src="<%=path%>/layui/layui.js"></script>

<div class="layui-form">
    <div class="layui-form-item">
        <label class="layui-form-label">用户姓名</label>
        <div class="layui-input-block">
            <input type="text" id="u_name" name="u_name" lay-verify="title" autocomplete="off" value="${user.u_name}" placeholder="用户姓名" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">用户性别</label>
        <div class="layui-input-block" id="danxuan">
            <input type="radio" id="radio1" class="u_sex" name="u_sex" value="0" title="男" <c:if test="${user.u_sex == '0'}"> checked </c:if>><div class="layui-unselect layui-form-radio layui-form-radioed"><i class="layui-anim layui-icon"></i><div>男</div></div>
            <input type="radio" id="radio2" class="u_sex" name="u_sex" value="1" title="女" <c:if test="${user.u_sex == '1'}"> checked </c:if>><div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i><div>女</div></div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户年龄</label>
        <div class="layui-input-block">
            <input type="text" name="u_age" id="u_age" lay-verify="title"  autocomplete="off" placeholder="用户年龄" value="${user.u_age}" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">家庭地址</label>
        <div class="layui-input-block">
            <input type="text" name="u_addr" id="u_addr" lay-verify="title" autocomplete="off" placeholder="家庭地址" value="${user.u_addr}" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">个人邮箱</label>
        <div class="layui-input-block">
            <input type="text" name="u_email" id="u_email" lay-verify="title" autocomplete="off" placeholder="个人邮箱" value="${user.u_email}" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">身份证号</label>
        <div class="layui-input-block">
            <input type="text" name="u_idCard" id="u_idCard" lay-verify="title" autocomplete="off" placeholder="身份证号" value="${user.u_idCard}" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            <button type="button" id="submit" class="layui-btn">立即提交</button>
        </div>
    </div>
</div>
<script>
    layui.use(['form','layer'], function () {
    // $(function () {
        $('#submit').click(function () {
            var u_name=$('#u_name').val();
            // var u_sex=$('.u_sex').val();
            var u_sex = $('#danxuan input[name="u_sex"]:checked ').val();
            var u_age=$('#u_age').val();
            var u_addr=$('#u_addr').val();
            var u_email=$('#u_email').val();
            var u_idCard=$('#u_idCard').val();
            var user={
                u_name:u_name,
                u_sex:u_sex,
                u_age:u_age,
                u_addr:u_addr,
                u_email:u_email,
                u_idCard:u_idCard
            }
            $.ajax({
                url:"/updateInfo.do",
                type:'post',
                dataType: 'json',
                data:user,
                success:function(data){
                    if(data.result=='操作成功'){
                        alert("修改成功");
                        window.parent.location.reload();
                    }else{
                        alert("修改失败，失败原因【" + data + "】");
                    }
                },
                error:function(data){
                    alert(data.result);
                }
            })
        })
    })
</script>
</body>
</html>

