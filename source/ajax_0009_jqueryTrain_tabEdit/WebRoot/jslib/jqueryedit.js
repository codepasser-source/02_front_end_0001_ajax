/** 
 * 页面装载 为td添加onclick事件
 */
 
$(document).ready(function (){
	//找到所有td节点
	var tds = $("td"); 
	tds.click(tdClick); 
});

function tdClick(){ 
	var clickFunction = this;//保存当前的方法 
	var td = $(this)
  	//1.保存当前的值
	var tdTemp = td.text();
	//2.清空当前td的值,也可以使用td.empty();
	$(this).html("");
	//3.建立一个文本框
	var input = $("<input>");//万能的$ 可以查找 也可以创建节点
	//4.设置文本框的内容
	input.attr("value",tdTemp);//设置属性值
	
	//4.5 监听键盘事件：按回车保存数据
	//fire fox 必须指定 event
	input.keyup(function (event){
		 var myEvent = event || window.event;//在两种浏览器中都能取到event
		//1.判断是否是 回车按键
		var kcode = myEvent.keyCode;
		if(kcode==13){//回车 -- 13 
		    //2.获取当前input的值
			var input = $(this);
			var inputTemp=input.val(); 
			var td = input.parent(); 
			if(inputTemp==""){
				//3.将保存的input的值，填充回td
				td.html(tdTemp);
			}else if(inputTemp==tdTemp){
				td.html(tdTemp);
			}else{
				//文本内容变更再执行交互
				accessServer(inputTemp)
				td.html(inputTemp);
			} 
			 //4.td从新拥有click事件
			td.click(tdClick);
		}			
	});	
	
	//失去焦点时回滚到最原始的数据
	input.blur(function (){
		var input = $(this);
		var td = input.parent(); 
		td.html(tdTemp);
		td.click(tdClick);
	});
	
	//5.把文本框加入到页面 当前td
	td.append(input);//jquery插入的方法		
	//5.5 获取input dom 对象
	var inputDom = input.get(0);
	inputDom.select();	 
	//6 解除td上的点击事件
	td.unbind("click");	  
}

function accessServer(val){
	
	//使用jquery的xmlhttpRequest对象get请求的封装
	   $.ajax({
		type: "POST",       //http请求方式
		url: "AJAXServer",  //请求地址
		data: "value="+val ,//发送的数据
		dataType: "html",    //告诉jquery返回数据的格式
		success:  callback  //交互成功 定义回调函数
	   }); 
}

function callback(data){ 
	//如果是xml类型数据，需要转换成jquery dom对象，获取子节点 从节点中获取文本节点
 
	alert(data);
}





