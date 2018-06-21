<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>jquery实例4：json数据格式</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 <link type="text/css" rel="stylesheet" href="<%=basePath%>css/stock.css">
 
 <script type="text/javascript" src="<%=basePath%>jslib/jquery-1.4.js"></script>
 <script type="text/javascript" src="<%=basePath%>jslib/jqueryStock.js"></script>
 
  </head> 
  <body>
  <h1>jquery效果实例4：json数据格式</h1>
  <h3>
      实现原理： <br> 1.运用javascript 中声明对象的语句格式
            <br> json格式1：  (数组格式) [{name:"n2"},{name:"n2"}]
            <br> json格式2：(对象格式) { "0001":{name:"n2"},"0002":{name:"n2"} }
            <br> 注：当为对象格式时 ，服务器端返回的数据最外层添加一个（），否则eval函数报错
 </h3>
  <hr> 
       <div id="3000001">
         <a href="#">上证指数</a>
         <span></span>
       </div>
       <div id="0000001">
         <a href="#">浦发银行</a>
         <span></span>
       </div>
       
       <div id="stock">
          <div id="yes">昨天：<span></span></div>
          <div id="tod">今天：<span></span></div>
          <div id="now">现在：<span></span></div>
       </div>
       
  </body>
</html>














