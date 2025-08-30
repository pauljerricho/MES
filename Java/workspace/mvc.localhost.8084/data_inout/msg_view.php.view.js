$(document).ready(function() {
	const urlParams = new URLSearchParams(location.search);
	var mode = urlParams.get("mode");
	var num = urlParams.get("num");
	
	if(mode=="send"){
		$("#msg_box h3").text("송신메세지함 > 목록보기");
	}else{
		$("#msg_box h3").text("수신메세지함 > 목록보기");	
	}
	$(".buttons > li:nth-child(3)").click(function(){
		location.href='/msg_response_form.php?num='+num;
	});
	
	javascript_onload_src("script_trns_form_submit_ajax");
	$(".buttons > li:nth-child(4)").click(function(){
		let formData = new FormData();
		formData.append("mod","delete");
		formData.append("num",num);
		formData.append("mode",mode);
		script_trns_form_submit_ajax(formData,"msg_box.php?mode="+mode);
	});
	
	$.ajax({
		url:"/trans_page_file/",
		type:"POST",
		cache:false,
		data:{
			"mod":"data",
			"mode":mode,
			"num":num,
		},
		dataType:'json',
		success:function(data){
			if(!data.userid){
				alert("로그인 후 이용해주세요!");
				//location.href='/lgi_form.php';
			}
			$("span.col1").html('<b>제목</b>'+data.subject);
			$("span.col2").text(data.name+" | "+data.regist_day);
			$("#view_content > li:last-child").html(data.content);
		},
		error:function(request,status,error){
			alert("데이터 조회 중 오류가 발생했습니다.");
			console.log("code:"+request.status, "\n" +"message:" + request.responseText + "\n" + "error:" + error);
		}
	});
});