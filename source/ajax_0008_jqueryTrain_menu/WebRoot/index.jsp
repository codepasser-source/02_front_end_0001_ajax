<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>jquery实例2：弹出菜单</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 <link type="text/css" rel="stylesheet" href="<%=basePath%>css/menu.css">
 
 <script type="text/javascript" src="<%=basePath%>jslib/jquery-1.4.js"></script>
 <script type="text/javascript" src="<%=basePath%>jslib/jquerymenu.js"></script>
 
  </head> 
  <body>
  <h1>jquery效果实例2：可收缩展开的菜单与局部刷新</h1>
  <h3>
      实现原理：<br>1. 利用jquery DOM 节点控制
            <br> 注意使用节点查找的方法：兄弟节点{node.getAll("li")}子节点{ node.children("li")   }     
            <br>2. 局部刷新  jquery 的load  方法实现局部刷新
            </h3>
  <hr>
      <ul>
        <div>menu1</div>
        <li><a href="#" id="load1.jsp">menu1_bar1</a></li>
        <li><a href="#" id="load2.jsp">menu1_bar2</a></li>
        <li><a href="#" id="load3.jsp">menu1_bar3</a></li>
        <li><a href="#" id="load4.jsp">menu1_bar4</a></li>
        <li><a href="#" id="load5.jsp">menu1_bar5</a></li>
      </ul>
      <ul id="menu2">
        <div>menu2</div>
        <li><a href="#">menu2_bar1</a></li>
        <li><a href="#">menu2_bar2</a></li>
        <li><a href="#">menu2_bar3</a></li>
      </ul>
      
      <div id="content"></div>
  </body>
</html>














