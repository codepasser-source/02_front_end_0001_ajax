 

var obj;
var sid ;
$(document).ready(function (){ 
	
	//页面隐藏详细信息div
	var stockNode = $("#stock");
	stockNode.css("border","1px solid black")
	.css("width","180px").css("position","absolute")//定义弹出框样式
	.css("z-index","99")//在窗体中的厚度
	.css("background","#cccccc").css("color","#5a5a5a");
	
	stockNode.hide();
	var as = $("a");
	
	//鼠标移上和移出
	as.mouseover(function(event){
		
		var aNode = $(this);
		var pNode = aNode.parent();
        sid = pNode.attr("id");//获取当前要想显示股票的id
		getInfo();
       
		//设置弹出框的位置
		
		 
		/*1显示在a节点的下方
		var offset = aNode.offset(); 
		stockNode.css("left",offset.left+80+"px");
		stockNode.css("top",offset.top+aNode.height()+"px");
		*/
		/*2显示鼠标的右下方
		 **/
		var myEvent = event || window.event;//不同浏览器支持
		stockNode.css("left",myEvent.clientX+5+"px");
		stockNode.css("top",myEvent.clientY+5+"px");
		
		stockNode.show("slow");
	});
	
	as.mouseout(function(){
		stockNode.fadeOut("slow");
	});
	
     accServer();//向服务器端发送请求
	 setInterval("accServer()", 1000);//设置每个1秒钟执行一次
});

function accServer(){ 
	 //访问后台服务  
	 $.get("AJAXServer?rd="+(new Date()),null,function(data){ 
		  obj =eval(data); //没有使用jquery json数据的处理方法
		 //jquery $.get 方法指定第四个参数 "json"时 可以自动进行 json数据的解析
		
		// obj=data; 
		 //取对象
		 var stock1 = obj["3000001"];// 取对象 用中括号 比用 .好用，如果字符串是数字字符则会认为是数字，会有问题
		 var stock2 = obj["0000001"]; 
		 /*
		  * 遍历Javascript 对象
		  * for(var stockid in obj){
		  *   var stock = obj[stockid]
		  * }
		  */
		  var span1 = $("#3000001").children("span");
		  if(stock1.now>stock1.yes){
			  span1.css("color","red");
		  }else{
			  span1.css("color","green");
		  }
		  span1.html(stock1.now);
		  
		  var span2 = $("#0000001").children("span");
		  if(stock2.now>stock2.yes){
			  span2.css("color","red");
		  }else{
			  span2.css("color","green");
		  }
		  span2.html(stock2.now);
		  
		  getInfo();
	 }); 
}

//鼠标效果的信息更新
function getInfo(){
	 var stockNode = $("#stock");
	 
	 //第一种显示方法
	 for(var paraName in obj[sid]){
		 if(paraName!="name"){
			 $("#"+paraName).children("span").html(obj[sid][paraName]);
		 }
	 }
	 
	 //第二种显示方法
	/* stockNode.children("#yes").children("span").html(obj[sid].yes);//注查找节点两种形式 ：1 ID 2 标签名（节点） 
     stockNode.children("#tod").children("span").html(obj[sid].tod);
     stockNode.children("#now").children("span").html(obj[sid].now);*/
}
