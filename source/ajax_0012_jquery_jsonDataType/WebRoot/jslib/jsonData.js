
$(document).ready(function (){
	
	$("#bt").click(function (){
		
	 
	     $.post("AJAXServer?rd="+(new Date()),null,function(data){ 
	    	var mydata = eval(data); 
			 alert(mydata[0]['name'])//数组取值
		}); 
		
	});
	
});
 

	
	
 