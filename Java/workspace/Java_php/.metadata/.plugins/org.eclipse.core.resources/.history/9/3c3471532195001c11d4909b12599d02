function script_2notvalue_check(form_name,in_type1,in_type2,msg){
	if($("input[name='"+in_type1+"']").val() != $("input[name='"+in_type2+"']").val()){
		alert(msg);
		$("input[name='"+in_type2+"']").val() = '';
		$("input[name='"+in_type2+"']").focus();
		return false;
	}else{
		return true;
	}	
}