 var wStatus1 = false;
 /*
$(document).ready(function(){
	$("#faqWrite").click(function(){
		
		faqWCheck(); 
		if(wStatus1){
			var f={writer:$("#writer").val(),
					title:$("#title").val(),
					content:$("#content").val()};
			
			$.ajax({
					type:"post",
					url:"/MyBookShop/counsel/module/faqproc.jsp?Mmenu=2&Smenu=2&mode=w",
					data:f,
					success:function(data){
						if(data==1){	
							alert("게시글이 등록되었습니다.");
							var url = "/MyBookShop/counsel/counsel.jsp?Mmenu=2&Smenu=2&mode=l"
								$(location).attr("href",url);
						}else{	
							alert("게시글이 등록되지 못했습니다.");
						}
						
					}
				});
			}
		});
});
*/



function faqWCheck()
{
	
	var faq_writer = document.frmwrite.writer.val;  					//$("#writer").val(); //document.frmwrite.writer.val;  
	var faq_title =	document.getElementById("title").value;					 //$("#title").val();
	var faq_content = document.getElementById("content").value;				//$("#content").val();
	wStatus1 = true;
	
	if(faq_writer == "" || faq_title =="" || faq_content ==""){
		alert("공백이 있습니다.");
		document.frmwrite.content.focus();
		wStatus1 = false;	  	
	}else{
		document.frmwrite.method="post";
		document.frmwrite.action
		="/MyBookShop/counsel/module/faqproc.jsp?Mmenu=2&Smenu=2&mode=w";
		document.frmwrite.submit();
	} 
	
}



