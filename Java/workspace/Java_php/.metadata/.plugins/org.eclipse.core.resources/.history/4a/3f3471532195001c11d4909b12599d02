function isPwd(value){
	var isValue=true;
	if(value.length<4 || value.length>12){
		isValue=false;
	}
	for(var i=0;i<value.length;i++){
		var chr=value.substr(i,1);
		if((chr<'0' || chr>'9') && (chr<'a' || chr>'z') && ( chr<'A' || chr>'Z') || (chr=='%20')){
			isValue=false;
		}
	}//연속된 숫자나 문자가 4자리 이상인지 확인
	cnt = 0;
	for(i=0; i<value.length;i++){
		if(((value.charCodeAt(i) - value.charCodeAt(i+1)) == 1) || ((value.charCodeAt(i) - value.charCodeAt(i+1)) == -1)){
			cnt++;
		}
	}

	if(cnt == (value.length-1)){
		return false;
	}//동일한 숫자나 문자가 4자리 이상인 경우
	for(i=0; i<value.length; i++){
		str2 = '';
		for(j=0;j<value.length;j++){
			str2 = str2 + value.charAt(i);
		}
		if( value.indexOf(str2) != -1 ){
			return false;
		}
	}
	return isValue;
}

javascript_onload_src("isNotSpaces");

function script_pass_check(formname,key,msg){
	var form = eval('document.'+formname+'.'+key);
	if(!isNotSpaces(form.value) || !form.value){
		alert(msg+'를 입력하세요');
		form.focus();
		return false;
	}else{
		if(!isPwd(form.value)){
			 alert(msg+'는 4~12자의 영문과 숫자의 혼합으로 입력해야하며 중복되거나 연속된 숫자나 문자가 4자리 이상 없어야 합니다');
			 form.focus();
			 return false;
		}
		return true;
	}
}