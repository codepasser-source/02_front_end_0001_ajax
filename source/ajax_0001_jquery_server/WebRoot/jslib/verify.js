function verify(){ 
  $.get("AJAXServer?username="+$("#username").val(),null,function(data){
         $("#checkdata").html(data); 
  });
}