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
     var chicago = new google.maps.LatLng(41.850033, -87.6500523);  
     /**  
     * The HomeControl adds a control to the map that simply  
     * returns the user to Chicago. This constructor takes  
     * the control DIV as an argument.  
     */  
     function HomeControl(controlDiv, map) {    
        // Set CSS styles for the DIV containing the control   
        // Setting padding to 5 px will offset the control   
        // from the edge of the map   
        controlDiv.style.padding = '5px';    
        // Set CSS for the control border   
        var controlUI = document.createElement('DIV');   
        controlUI.style.backgroundColor = 'white';   
        controlUI.style.borderStyle = 'solid';   
        controlUI.style.borderWidth = '2px';   
        controlUI.style.cursor = 'pointer';   
        controlUI.style.textAlign = 'center';   
        controlUI.title = 'Click to set the map to Home';   
        controlDiv.appendChild(controlUI);    
        // Set CSS for the control interior   
        var controlText = document.createElement('DIV');   
        controlText.style.fontFamily = 'Arial,sans-serif';   
        controlText.style.fontSize = '12px';   
        controlText.style.paddingLeft = '4px';   
        controlText.style.paddingRight = '4px';   
        controlText.innerHTML = 'Home';   
        controlUI.appendChild(controlText);    
        // Setup the click event listeners: simply set the map to   
        // Chicago   
        google.maps.event.addDomListener(controlUI, 'click', function() {      
            map.setCenter(chicago)   
         }); 
      } 
      
      function initialize() {  
        var mapDiv = document.getElementById('map');   
        var myOptions = {     
               zoom: 12,     
               center: chicago,     
               mapTypeId: google.maps.MapTypeId.ROADMAP   
             }   
        map = new google.maps.Map(mapDiv, myOptions);    
        
        // Create the DIV to hold the control and   
        // call the HomeControl() constructor passing   
        // in this DIV.   
        var homeControlDiv = document.createElement('DIV');   
        var homeControl = new HomeControl(homeControlDiv, map);    
        homeControlDiv.index = 1;   
        map.controls[google.maps.ControlPosition.TOP_RIGHT].push(homeControlDiv); 
      }
      
      $(document).ready(function(){
           initialize();
      })
  </script>
  <body> 
     <div id="map" class="map_canvas"></div>
  </body>
</html>
