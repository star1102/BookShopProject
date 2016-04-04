/**
 * 로그인 관련 자바스크립트 
 */
var STATUS = true;

$(document).ready(function(){
	$("#login").click(function(){
		checkInput();	//입력 값 확인하고...
		if(STATUS){ //비동기통신을 할지 여부 check
			var query = {id:$("#id").val(), pass:$("#pass").val()};
			$.ajax({
						type:"post",
						url:"logProcess.jsp?type=in",
						data:query,
						success:function(responseData){
							if(responseData==1){
								location.href="../index.jsp";
							}else{
								alert("아이디나 이름이 잘못 입력되었습니다.");
								$("#id").val("");
								$("#pass").val("");
								$("#id").focus();
							}
						}
				   });
		}
	});
});

function checkInput(){
	if($.trim($("#id").val()) == ""){
		alert("아이디를 입력하세요");
		$("#id").focus();
		STATUS = false;
	}else if($.trim($("#pass").val()) == ""){
		alert("비밀번호를 입력하세요");
		$("#pass").focus();
		STATUS = false;
	}
}




