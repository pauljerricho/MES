$(document).ready(function(){
	javascript_onload_src("script_trns_form_submit_ajax");
	javascript_onload_src("script_id_check");
	javascript_onload_src("script_pass_check");
	
	script_new_reformdata("#main_content","myform","/lgi_form.php","login");
	$("#lgi_btn").click(function(){
		if(!script_id_check("myform","u_id","아이디")){
			return false;
		}else if(!script_pass_check("myform","u_pass","비밀번호")){
			return false;
		}else{
			alert("test");
			let formData = new FormData(document.getElementById("myform"));
			script_trns_form_submit_ajax(formData,"/index.php");
		}
	});
});