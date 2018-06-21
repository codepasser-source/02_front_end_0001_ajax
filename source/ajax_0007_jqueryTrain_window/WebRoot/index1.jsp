<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title> </title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
  #win{
    background-color:"#ffffff";
    width:"300px";
    height:"200px";
     left:"200px";
    top: "100px";
    border: 1px #5a5a5a solid; 
    position:absolute; /*绝对定位*/
    /*display:none;*/
  }
  #title{
     background-color:"#cccccc";
     width:"300px";
     height:"25px"; 
     padding: "3px"
  }
  #close{
     background-color:"#cccccc";
     width:"20px";
     height:"25px"; 
     margin-left: "240px";
     padding: "3px"
  }
   #content{
     background-color:"#00cc00";
     width:"300px";
     height:"180px";  
     padding: "10px"
   }
   
   #show{
     width: 40px;
     height: 25px;
   }
</style> 
<script type="text/javascript" src="jslib/jquery-1.4.js"></script>

<script type="text/javascript">
     function closeWin(){ 
       var  win = $("#win");
       /*隐藏的方法 一 ： 三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000)*/
       win.hide("slow");
     }
     
     function show(){
       var  win = $("#win");
      
      /*显示的方法 一 ：show 三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000)
       win.show(1000,function(){
          alert("显示完成");
       });*/
       
       /*切换状态 方法 toggle() 
                        根据switch参数切换元素的可见状态（ture为可见，false为隐藏）。
                         三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000)
       */
       win.toggle(1000,function(){
         alert("切换完毕");
       });
     }
</script>

 </head> 
  <body>
     <button  id="show" onclick="show()">show</button> 
     <div id="win"> 
         <div id="title">标题<span id="close" onclick="closeWin();">X</span></div>
         <div id="content">内容</div>
     </div>
  </body>
</html>
