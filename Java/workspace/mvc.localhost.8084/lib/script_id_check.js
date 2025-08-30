
function script_id_check(form_name,key,msg){
	var form = eval('document.'+form_name+'.'+key);
	//var input_obj = $('input[name=]')
	if(!isNotSpaces(form.value) || !form.value){
		alert(msg+'를 입력하세요');
		form.focus();
		return false;
	}else{
		if(!isID(form.value)){
			 alert(msg+'는 4~12자의 영문과 숫자로 입력해야 됩니다.');
			 form.focus();
			 return false;
		}
		return true;
	}
}

function isID(value){
    var isValue=true;
    if(value.length < 4 || value.length > 12){
        isValue=false;
    }else{
        for(var i=0;i < value.length;i++){
            var chr=escape(value.substr(i,1));
            if((chr < '0' || chr > '9') && (chr < 'a' || chr > 'z') && ( chr < 'A' || chr > 'Z') || (chr== '%20')){
                isValue=false;
            }
        }
    }
    return isValue;
}

function isNotSpaces(string){
	var temp = '';
	string = '' + string; splitstring = string.split(' ');
	for(i = 0; i < splitstring.length; i++)
		temp += splitstring[i];
	if(!temp){
		return false;
	}else{
		return true;
	}
}