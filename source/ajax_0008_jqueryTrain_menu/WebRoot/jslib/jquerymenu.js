/**
 * 点击主菜单按钮时，显示菜单项
 * 编写页面转载 方法
 */
//jquery 页面装载方法实现 
$(document).ready(function(){
	//找到所有主菜单
	var divs = $("ul > div");//查找所有ul 的 div子节点
	
	//为ul注册onclick事件
	divs.click(function(){
		//查找当前ul的 li,然后显示
		var divNode = $(this); //获取当前被点击的div节点
		var lis = divNode.nextAll("li");//获取兄弟节点 
		//让子节点显示或隐藏,利用jquery 的 toggle("slow")方法切换display;
		lis.toggle("slow"); 
	});
	
	//局部刷新
	var as = $("li > a");//查找所有li 的 a子节点
	as.click(function(){ 
		$("#content").load($(this).attr("id"));//attr方法获取当前节点的 id值
	});
	
});