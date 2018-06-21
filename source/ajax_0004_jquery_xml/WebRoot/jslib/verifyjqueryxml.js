function verify(){  
	
 //1 获取页面对象
 var jqueryObj= $("#username");
 var userName = jqueryObj.val();
 //2 将文本内容的数据发送给服务器端
 //javascript 中定义一个对象 
 var obj={name:"123",age:20};
 
 //使用jquery的xmlhttpRequest对象get请求的封装
   $.ajax({
	type: "POST",       //http请求方式
	url: "AJAXServer",  //请求地址
	data: "username="+userName,//发送的数据
	dataType: "xml",    //告诉jquery返回数据的格式
	success:  callback  //交互成功 定义回调函数
   })
}

function callback(data){ 
	//需要将data这个dom 对象中的 xml数据解析出来
	var jqueryObj = $(data)
	//获取message节点
	var message = jqueryObj.children();
	var text = message.text();
	
	var resultObj=$("#checkdata");
	resultObj.html(text);
}















