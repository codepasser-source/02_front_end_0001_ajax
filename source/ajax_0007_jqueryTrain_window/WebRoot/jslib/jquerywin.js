
function showWin(){
	//alert("yes");
	
	//1.找到窗口div节点
	var winNode = $("#win");
	//2.让div显示
	//方法1：修改节点的css值
	//winNode.css("display","block");
	//方法2：利用jquery 的 show方法
	//winNode.show("slow");//逐渐变大
	//方法3：利用jquery 的 fadeIn方法
	winNode.fadeIn("slow");//淡入淡出
	
}

function hide(){
	var winNode = $("#win");
	//设置隐藏
	//方法1：修改节点的css值
	//winNode.css("display","none");
	//方法2：利用jquery 的hide方法
	 winNode.hide("slow");//逐渐变小 
	//方法3：利用jquery 的 fadeOut方法
	//winNode.fadeOut("slow");//淡入淡出
	
}