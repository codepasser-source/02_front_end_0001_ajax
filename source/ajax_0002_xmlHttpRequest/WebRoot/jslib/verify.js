 var xmlHttp ;
function verify(){  
  var username = document.getElementById("username").value;
  alert(username); 
  //1创建XMLHttpRequest 对象
  //需要针对IE和其他类型的浏览器建立这个对象的不同方式写不同的代码
   if(window.XMLHttpRequest){ 
	  //针对 FireFox Mozillar Opera Safari IE7 IE8
	 xmlHttp = new XMLHttpRequest(); 
	  //针对某些特定版本的mozillar浏览器的BUG进行验证
	  if(xmlHttp.overrideMimeType){
		  xmlHttp.overrideMimeType("text/xml");
	  }
   }else if(window.ActiveXObject){
	  //针对IE6 之前的版本
	  var activexName = ["MSXML2.XMLHTTP","Microsoft.XMLHTTP"];
	  for(var i=0;i<activexName.length;i++){
		  try{
			xmlHttp = new ActiveXObject(activexName[i]);
			  break;
		  }catch(e){ 
		  }
	  } 
   } 
  if(!xmlHttp){
	  alert("对不起，您的浏览器版本过低");
  }else{
	  alert(xmlHttp.readyState); 
	  //2回调函数
	  xmlHttp.onreadystatechange = callback;
	  //3设置连接信息
	  //第三个参数是同步还是异步的方式 true表示异步
	
	     xmlHttp.open("GET", "AJAXServer?username="+username,true);
	    
	  /*  4.发送数据，开始和服务器端进行交互
	    同步方式下send方法这句话在服务器端返回数据时执行完
	    异步方式下send方法这句话立即这行完*/
	 
	   xmlHttp.send(null); 
	  /*POST 方式实现 
	    * xmlHttp.open("POST", "AJAXServer",true);
	  xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	  xmlHttp.send("username="+username);*/
  } 
} 
function callback(){
	/* 判断对象是否交互完成
	 * readyState：0-未初始化  1-open方法成功调用以后  2-服务器已经接收到应答  3- 交互中相应未接受 4-完成
	 * 当xmlHttp.readyState发生变化时 就会执行callback 方法
	*/
	 alert(xmlHttp.readyState);
	  if(xmlHttp.readyState==4){
		  //判断http的交互是否成功
		  if(xmlHttp.status==200){
			  //获取服务端返回的数据
			  var responseText = xmlHttp.responseText;
			  //将数据显示在页面上
			  document.getElementById("checkdata").innerHTML=responseText;
		  }
	  }
	  
}