
function isEmail(email){
    var regDoNot = /(@.*@)|(\.\.)|(@\.)|(\.@)|(^\.)/;
    var regMust = /^[a-zA-Z0-9\-\.\_]+\@[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3})$/;
                
    if(!regDoNot.test(email) && regMust.test(email)){
        return true;
    }else{
        return false;
    }
}

function script_email_check2(formname,key1,key2,msg){
	var email1 = eval('document.'+formname+'.'+key1);
	var email2 = eval('document.'+formname+'.'+key2);
	if(!email1.value){
		alert(msg);
		email1.focus();
		return false;
	}else if(!email2.value){
		alert(msg);
		email2.focus();
		return false;
	}else{
		if(!isEmail(email1.value+'@'+email2.value)){
			alert(msg)
			email2.focus();
			return false;
		}
		return true;
	}
}