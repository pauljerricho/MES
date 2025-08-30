function script_win_open(url,win_name,width,height,scrollbar){
	if(width && height && url){
		var etc = new Array();
		etc[0] = 'width ='+width;
		etc[1] = 'height ='+height;
		if(scrollbar){
			if(scrollbar.match(/(y)|(yes)/i)){
				etc[2] = 'scrollbars = yes';
			}else if(scrollbar.match(/(n)|(no)/i)){
				etc[2] = 'scrollbars = no';
			}
		}
		var option = etc.join(',');
	}else{
		alert('width값과 height값은 필수입니다.');
		return false;
	}
	window.open(url,win_name,option);
}