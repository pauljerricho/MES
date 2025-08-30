function script_checkall(obj,val){
	var chk = document.getElementsByName(val);
	if(obj.checked==false){
		for(var i=0;i<chk.length;i++){
			chk[i].checked = false;
		}
	}else{
		for(var i=0;i<chk.length;i++){
			chk[i].checked = true;
		}
	}
}