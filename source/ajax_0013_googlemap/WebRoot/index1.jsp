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
	 <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
	 <script type="text/javascript" src="jquery-1.5.1.js"></script>

	<style type="text/css">
	  .map_canvas{
	     position: absolute;
	     width: 80%;
	     height: 70%;
	     border: 1px solid #5a5a5a;
	     
	  }
	</style> 
  </head>
  <script type="text/javascript">
     var map;  
       
        $(document).ready(function(){
             initialize();
        });
      function initialize() {  
        var mapDiv = document.getElementById('map');   
        var myOptions = {     
               zoom: 12,     
               center: new google.maps.LatLng(38.912407,121.376953),     
               mapTypeId: google.maps.MapTypeId.ROADMAP   
             }   
        map = new google.maps.Map(mapDiv, myOptions);   
        
      }; 
      
  </script>
 <script type="text/javascript" src="MyControl.js"></script>
  <body> 
     <div id="map" class="map_canvas"></div>
  </body>
</html>
