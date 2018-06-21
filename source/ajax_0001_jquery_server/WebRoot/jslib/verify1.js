
function  verify(){ 
    //1获取页面文本域值
    /**
     *dom方式 document.getElementById("username");
     *jquery的查找节点 1 id选择器 2 class选择器
     */
    
     var info=$("#username");
     var username =info.val();
    //alert(username); 
    //2 后台servlet 发送数据
     $.get("/AJAXServer?username="+username,null,callback);
}

function callback(data){ 
     //alert("服务器数据返回");
     //3读取后台返回数据 
     var checkdata=$("#checkdata"); 
     //4 在页面显示出数据 
     checkdata.html(data);
}