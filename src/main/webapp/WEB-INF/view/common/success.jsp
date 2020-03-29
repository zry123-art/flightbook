<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
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
  	<input type="hidden" id="oper" value="${operator}"/>
  	<script type="text/javascript">
  		var oper =  document.getElementById("oper").value;
  		switch(oper){
  			case "1":
  				alert("修改个人资料成功");
  				location.href = "toUpdateInfo.do";
  				break;
/*  			case "2":
  				alert("修改部门信息成功");
  				location.href = "queryDepts.do";
  				break;
  			case "3":
  				alert("删除部门成功");
  				location.href = "queryDepts.do";
  				break;
  			case "4":
  				alert("添加员工成功");
  				location.href = "QueryEmp.do";
  				break;
  			case "5":
  				alert("修改员工信息成功");
  				location.href = "QueryEmp.do";
  				break;
  			case "6":
  				alert("删除员工信息成功");
  				location.href = "QueryEmp.do";
  				break;
  			case "7":
  				alert("修改员工信息成功");
  				location.href = "queryDepts.do";
  				break;
  			case "8":
  				alert("删除员工信息成功");
  				location.href = "queryDepts.do";
  				break;
  			case "9":
  				alert("添加员工信息成功");
  				location.href = "queryDepts.do";
  				break;
  			case "10":
  				alert("添加请假信息成功");
  				location.href = "QueryQjInfo.do";
  				break;
			case "11":
				alert("删除请假信息成功");
				location.href = "QueryQjInfo.do";
				break;
			case "12":
				alert("修改请假信息成功");
				location.href = "QueryQjInfo.do";
				break;
			case "13":
				alert("添加报销信息成功");
				location.href = "QueryBx.do";
				break;
			case "14":
				alert("删除报销信息成功");
				location.href = "QueryBx.do";
				break;
			case "15":
				alert("修改报销信息成功");
				location.href = "QueryBx.do";
				break;
			case "16":
				alert("添加用户信息成功");
				location.href = "QueryAllUsers.do";
				break;
			case "17":
				alert("删除用户信息成功");
				location.href = "QueryAllUsers.do";
				break;
			case "18":
				alert("修改用户信息成功");
				location.href = "QueryAllUsers.do";
				break;
			case "19":
				alert("修改密码成功");
				location.href = "session/quit.jsp";*/
  		}
  	</script>
  </body>
</html>
