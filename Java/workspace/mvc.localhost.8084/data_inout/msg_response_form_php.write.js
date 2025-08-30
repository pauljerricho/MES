$(document).ready(function(){
	const urlParams = new URLSearchParams(location.search);
	var num = urlParams.get("num");
	
	script_new_reformdata("#write_msg", "myform", "/msg_form.php", "insert");
	$('#myform').append($('</input>',{type:'hidden',name:'rv_id',value:''}));
	
	javascript_onload_src("script_trns_form_submit_ajax");
	javascript_onload_src("script_id_check");
	javascript_onload_src("script_text_check");
	
	$("#write_msg > button").click(function(){
		if(!script_id_check("myform","rv_id","수신 아이디")){
			return false
		}else if(!script_text_check("myform","subject","제목을 입력해주세요.")){
			return false
		}else if(!script_text_check("myform","content","내용을 입력해주세요.")){
			return false
		}else{
			let formData = new FormData(document.getElementById("myform"));
			script_trns_form_submit_ajax(formData,"/index.php");
		}
	});
	
	$.ajax({
		url:"/trans_page_file/",
		type:"POST",
		cache:false,
		data:{
			"mod":"data",
			"num":num
		},
		dataType:'json',
		success:function(data){
			if(!data.userid){
				alert("로그인 후 이용해주세요!");
				location.href='/lgi_form.php';
			}else{
				$("#write_msg > ul > li:nth-child(1) > .col2").text(data.userid);
				$("#write_msg > ul > li:nth-child(2) > .col2").text(data.name+"("+data.send_id+")");
				$("input[name='rv_id']").val(data.send_id);
				$("input[name='subject']").val(data.subject);
				$("textarea[name='content']").html(data.content);
			}	
		},
		error:function(request, status, error){
         alert("데이터 조회중 오류가 발생했습니다. 관리자에게 문의해 주세요.");
            console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }
	});
});