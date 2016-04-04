

var wStatus = false;

$(document).ready(function(){
	$("#adminWrite").click(function(){
		
		adminWCheck(); //입력값들 정확성 check
		if(wStatus){
			var q={id:$("#id").val(),
					name:$("#name").val(),
					grade:$("#grade").val()};
			
			$.ajax({
					type:"post",
					url:"/MyBookShop/member/adminproc.jsp?Mmenu=1&Smenu=1&mode=w",
					data:q,
					success:function(data){
						if(data==1){	//글등록
							alert("관리자가 등록되었습니다.");
							var url = "/MyBookShop/member/member.jsp?Mmenu=1&Smenu=1&mode=l"
								$(location).attr("href",url);
						}else{	//등록 X
							alert("관리자가 등록되지 못했습니다.");
						}
						
					}
				});
			}
		});
});

function adminWCheck()
{
	var in_id = $("#id").val();             //document.frmAdminW.id.value;
	var in_name = $("#name").val();			//document.getElementById("name").value;
	var in_grade = $("#grade").val();		//document.getElementById("grade").value;
	wStatus=true;
	
	if(in_id == "" || in_name =="" || in_grade ==""){
		alert("값이 잘못입력 되었습니다.");
		document.frmAdminW.id.focus();
		wStatus=false;
	}
}