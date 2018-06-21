 var word;//单词文本
 var complete;//提示框
var timsId; //服务器交互延迟

 
$(document).ready(function (){
	
	 var heightIndex = -1; //上下选择 标志变量
	
	word = $("#word");
	complete = $("#complete");
	complete.hide();
	
	//设置补全框显示位置-紧贴住单词边框
	var offset = word.offset();
	complete.css("position","absolute");
	complete.css("left",offset.left+"px");
	complete.css("top",offset.top+word.height()+5+"px");
	
	//键盘输入时与服务端交互
	word.keyup(function (event){  
		var myEvent = event || window.event;
		var keyCode = myEvent.keyCode;
		//alert(keyCode)
		if(keyCode>=65 && keyCode<=90 || keyCode ==8 || keyCode==46){//判断输入的是字母再向服务当发送,按退格 和删除同样
			
			 clearTimeout(timsId);//当下一次操作开始时清除当前延迟交互的方法，达到减轻服务器压力的方法
			 timsId = setTimeout(function (){
				 var chars = word.val(); 
				 if(chars.length!=0){//如果不为空时不发送
					 accServer(chars); 
					 complete.show("slow"); 
					 heightIndex = -1;
				 }else{//如果为空时隐藏提示框
					 complete.hide("slow");
					 heightIndex = -1; //隐藏的同时，将index重置-1
				 }
			},1000);
			
		}else if(keyCode==38 || keyCode == 40){//按 向上向下按键 时 移动 
			 var autoNodes =  complete.children("div"); 
			 //alert(autoNodes.length)
			if(keyCode==38){//向上 
				  if(heightIndex!=-1){
					  //如果原来的背景色高亮，则将背景改为白色
					  autoNodes.eq(heightIndex).css("background","#FFFFFF");
					  heightIndex--;
				  }else{
					  heightIndex= autoNodes.length-1;
				  }  
				  //将当前高亮
				  autoNodes.eq(heightIndex).css("background","#CCCCCC");
			 }
               
			 if(keyCode==40){//向下 
				 if(heightIndex!=-1){
					  //如果原来的背景色高亮，则将背景改为白色
					  autoNodes.eq(heightIndex).css("background","#FFFFFF"); 
					  heightIndex++;
				  }else{
					  heightIndex=autoNodes.length-1;
				  }  
                 if(heightIndex==autoNodes.length){
					  heightIndex= 0; 
				  }  
				  //将当前高亮
				  autoNodes.eq(heightIndex).css("background","#CCCCCC");
			 }
		}else if(keyCode==13){//回车
			var autoNodes =  complete.children("div"); 
			  if(heightIndex!=-1){ 
				  word.attr("value",autoNodes.eq(heightIndex).text());
				  complete.hide("slow");
			  } 
		} 
		
	}); 
	
	//万能的$ 还可以这样查找节点
	 $("input[type='button']").click(function(){ 
	 });
	
});

function accServer(chars){ 
	$.post("AJAXServer",{wd:chars},function (data){
		 var jqueryObj = $(data);
		 var wordNodes= jqueryObj.find("word");
		  
		 //清空complete div中的子div
		 complete.empty();
		//遍历所有节点
		 wordNodes.each(function (){  
			 //获取文本节点内容
			 var wd = $(this).text();
			 //新建div 节点
			 var div = $("<div>");
			 //将文本放入div
			 div.html(wd);
			 //将子div 放入自动补全div中
			 complete.append(div); 
			 //添加div鼠标效果
			 div.mouseover(function (){
				 div.css("background","#CCCCCC");
			 }); 
			 div.mouseout(function (){
				 div.css("background","#FFFFFF");
			 }); 
			 //鼠标选择点击 单词放入文本框
			 div.click(function (){
				 word.attr("value",div.text());
			 }); 
		 }); 
	},"xml"); 
}