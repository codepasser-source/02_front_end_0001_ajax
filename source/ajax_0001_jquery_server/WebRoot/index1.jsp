<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	--> 
	<script type="text/javascript" src="jslib/jquery-1.4.js"></script>
	<script type="text/javascript">
	  function oncheck(){  
	      $.get(
	        "AJAXServer?username="+$("#username").val(),
	        null,
	        function(resultData){ //回调函数
	          $("#checkResult").html(resultData);
	        }	        
	      );
	      
	       
	  }
	</script>
  </head> 
  <body>
    <input type="text" id="username"/><input type="button"  value="检查" onclick="oncheck();"/>
    <span id="checkResult"></span>
  </body>
</html>
