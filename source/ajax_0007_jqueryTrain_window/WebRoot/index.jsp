<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>jquery实例1：淡入淡出的窗口</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 <link type="text/css" rel="stylesheet" href="<%=basePath%>css/win.css">
 <script type="text/javascript" src="<%=basePath%>jslib/jquery-1.4.js"></script>
 <script type="text/javascript" src="<%=basePath%>jslib/jquerywin.js"></script>
 
  </head> 
  <body>
  <h1>jquery效果实例1：淡入淡出的浮动窗口</h1>
  <h3>
      实现原理：<br>1. 使用div
            <br>2. 使用css样式
  </h3>
  <hr>
    <button id="openBT" onclick="showWin();">弹出窗口</button>
    <!-- 如何表示页面中的一个弹出窗口？用DIV表示 -->
    <div id="win">
       <div id="title">标题栏 <span id="close" onclick="hide();">X</span></div>
       <div id="content">窗口内容</div>
    </div>
  </body>
</html>














