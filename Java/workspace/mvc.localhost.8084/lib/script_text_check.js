function script_text_check(formname,key,msg){
	var form = eval('document.'+formname+'.'+key);
	if (!form.value) {
		alert(msg);
		form.focus();
	}else{
		return true;
	}
}