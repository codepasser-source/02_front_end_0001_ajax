<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <script type="text/javascript" src="./jslib/jquery-1.4.js"></script>
 <script type="text/javascript" src="./jslib/verifyjqueryxml.js"></script>
  </head>
  
  <body>
  <h1>ajax jquery 接收服务器端 XML 数据
 </h1>
  <hr>
 <!--ajax 的 方式 不需要表单-->
 <!--ajax 的 方式name 需要id-->
  用户名：<input type="text" id="username" />
         <input type="button" id="check" value="校验" onclick="verify()"/>
         <span id="checkdata" style="color:#cccccc;"></span>
  </body>
</html>
