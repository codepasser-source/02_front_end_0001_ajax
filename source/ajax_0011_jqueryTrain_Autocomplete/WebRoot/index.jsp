<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>jquery实例5：仿GOOGLE 搜索自动补全</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 <link type="text/css" rel="stylesheet" href="<%=basePath%>css/complete.css">
 
 <script type="text/javascript" src="<%=basePath%>jslib/jquery-1.4.js"></script>
 <script type="text/javascript" src="<%=basePath%>jslib/jqueryComplete.js"></script>
 
  </head> 
  <body>
  <h1>jquery效果实例5：仿GOOGLE 搜索自动补全</h1>
  <h3>
      注： <br> 1.与服务端交互的方式 ，返回的 数据类型为 xml ,(xml.jsp利用请求转发返回xml的面代码)  
      <br> 2.文本域中的keyup 监听的方法，不同按键的处理
      <br> 3.动态添加div节点
      <br> 4.鼠标移动效果
      <br> 5.减轻服务器压力的   （设置延迟，清空延迟）
      <br> 6.后台服务端 处理选择单词的方法(滑动门效果)
         
 </h3>
  <hr> <div align="center">
        <input id="word" type="text"><input type="button" value="提交"> 
       </div>
       <div id="complete"> 
        </div> 
  </body>
</html>














