<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>jquery实例2：可编辑的表格</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 <link type="text/css" rel="stylesheet" href="<%=basePath%>css/tab.css">
 
 <script type="text/javascript" src="<%=basePath%>jslib/jquery-1.4.js"></script>
 <script type="text/javascript" src="<%=basePath%>jslib/jqueryedit.js"></script>
 
  </head> 
  <body>
  <h1>jquery效果实例3：可编辑的表格</h1>
  <h3>
      实现原理： <br>1. 使用Jquery $("&lt;input&gt;") 动态创建dom节点
            <br>2. 使用Jquery node.attr("属性","值") 动态指定节点的属性值
            <br>3. 使用Jquery node.click(function(){动态添加事件});（注：javascript）
            <br>4. 使用Jquery node.unbind("事件名") 动态解除事件
 </h3>
  <hr>
      
      <table>
        <tbody>
          <tr align="center">
            <td>name</td>
            <td>age</td>
            <td>sex</td>
            <td>phone</td>
          </tr>
           <tr>
            <td>baishui</td>
            <td>24</td>
            <td>男</td>
            <td>13840981342</td>
          </tr>
        </tbody>
      </table>
      
  </body>
</html>














