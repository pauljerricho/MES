/*모달창 상단위치 조정 함수*/
function alignModal(){
	var w_ht = $(window).height();
	var modal="#myform2";
	var modal_width = $(modal).width()/2;
	if(w_ht>$(modal).innerHeight()+100){
		$(modal).css({
			"top" : "unset",
			"position" : "relative",
			"margin-bottom" : "0",
			"left" : "unset"
    	});
	}else{
		$(modal).css({
    		"top" : "50px",
    		"position" : "absolute",
    		"margin-bottom" : "50px"
    	});
	}
}

function setCookie( name, value, expiredays ){
    var todayDate = new Date();
    todayDate.setDate( todayDate.getDate() + expiredays );
    document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";";
}

function getCookie(name){
	var first
	var str = name +"=";
	if(document.cookie.length>0) {
		find = document.cookie.indexOf(str);
		if(find == -1 ) return null;
		first = find+str.length;
		end = document.cookie.indexOf(";", first)
		if(end == -1 )
		end = document.cookie.length
		return unescape(document.cookie.substring(first,end))
	}
}

function deleteCookie( cookieName ){
	var expireDate = new Date();
	expireDate.setDate( expireDate.getDate() - 1 );
	document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString() + "; path=/";
}
        
function start_fullscreen() {
	if (document.body.requestFullScreen) {
		document.body.requestFullScreen();
	} else if (document.body.webkitRequestFullScreen) {
		document.body.webkitRequestFullScreen();
	} else if (document.body.mozRequestFullScreen) {
		document.body.mozRequestFullScreen();
	} else if (document.body.msRequestFullscreen) {
		document.body.msRequestFullscreen(); // IE
	}
}

function stop_fullscreen() {
	if (document.exitFullscreen) {
		document.exitFullscreen();
	} else if (document.cancelFullScreen) {
		document.cancelFullScreen();
	} else if (document.webkitCancelFullScreen) {
		document.webkitCancelFullScreen();
	} else if (document.mozCancelFullScreen) {
		document.mozCancelFullScreen();
	} else if (document.msExitFullscreen) {
		document.msExitFullscreen(); // IE
	}
}

function date_set(num) {
	var form = document.myform;
	form.date_today.value = num;
	var date = new Date();
	var year = date.getFullYear();
	var month = (date.getMonth() + 1);
	var month2 = (date.getMonth()) < 10 ? '0' + (date.getMonth()) : (date
			.getMonth());
	var day = (date.getDate() + 0) < 10 ? '0' + date.getDate() : date.getDate();
	var today = date.getDay();
	var startweek = date.getDate() - today;
	var endweek = 0;
	var month3 = 0;
	var endweek2 = 0;
	if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8
			|| month == 10 || month == 12) {
		endweek2 = 31;
		if (date.getDate() + (6 - today) <= 31) {
			month3 = month;
			endweek = date.getDate() + (6 - today);
			endweek = endweek < 10 ? '0' + endweek : endweek;
		} else {
			month3 = month + 1;
			endweek = date.getDate() + (6 - today) - 31;
			endweek = endweek < 10 ? '0' + endweek : endweek;
		}
	} else if (month == 2) {
		endweek2 = 28;
		if (date.getDate() + (6 - today) <= 28) {
			month3 = month;
			endweek = date.getDate() + (6 - today);
			endweek = endweek < 10 ? '0' + endweek : endweek;
		} else {
			month3 = month + 1;
			endweek = date.getDate() + (6 - today + 1) - 28;
			endweek = endweek < 10 ? '0' + endweek : endweek;
		}
	} else {
		endweek2 = 30;
		if (date.getDate() + (6 - today) <= 30) {
			month3 = month;
			endweek = date.getDate() + (6 - today);
			endweek = endweek < 10 ? '0' + endweek : endweek;
		} else {
			month3 = month + 1;
			endweek = date.getDate() + (6 - today) - 30;
			endweek = endweek < 10 ? '0' + endweek : endweek;
		}
	}
	month = month < 10 ? '0' + month : month;
	month3 = month3 < 10 ? '0' + month3 : month3;
	day1 = day - 1;
	day1 = day1 < 10 ? '0' + day1 : day1;
	day = day.lenght == 1 ? '0' + day : day;
	startweek = startweek < 10 ? '0' + startweek : startweek;

	/* 2020.01.28 김은기 수정사항(전월,전일 오류수정 ) */
	year2 = month2 == 0 ? year - 1 : year;
	month2 = month2 == 0 ? 12 : month2;
	day1 = day1 == 0 ? month1(month - 1) : day1;
	year3 = month2 == 0 && day1 == 0 ? year - 1 : year;
	month4 = day1 == 0 ? month2 : month;

	switch (num) {
	case 1:
		form.inout_date1.value = year + '-' + month + '-' + day;
		form.inout_date2.value = year + '-' + month + '-' + day;
		break;
	case 2:
		form.inout_date1.value = year3 + '-' + month4 + '-' + day1;
		form.inout_date2.value = year3 + '-' + month4 + '-' + day1;
		break;
	case 3:
		form.inout_date1.value = year + '-' + month + '-' + startweek;
		form.inout_date2.value = year + '-' + month3 + '-' + endweek;
		break;
	case 4:
		form.inout_date1.value = year + '-' + month + '-' + '01';
		form.inout_date2.value = year + '-' + month + '-'
				+ month1((date.getMonth() + 1));
		break;
	case 5:
		form.inout_date1.value = year2 + '-' + month2 + '-' + '01';
		form.inout_date2.value = year2 + '-' + month2 + '-'
				+ month1((date.getMonth()));
		break;
	case 6:
		form.inout_date1.value = '';
		form.inout_date2.value = '';
		break;
	}
}

function month1(month) {
	if (month == 0 || month == 1 || month == 3 || month == 5 || month == 7
			|| month == 8 || month == 10 || month == 12) {
		endweek2 = 31;
	} else if (month == 2) {
		endweek2 = 28;
	} else {
		endweek2 = 30;
	}
	return endweek2;
}

var xmlHttp;
function srvTime() {
	if (window.XMLHttpRequest) {// 분기하지 않으면 IE에서만 작동된다.
		xmlHttp = new XMLHttpRequest(); // IE 7.0 이상, 크롬, 파이어폭스 등
		xmlHttp.open('HEAD', window.location.href.toString(), false);
		xmlHttp.setRequestHeader('Content-Type', 'text/html');
		xmlHttp.send('');
		return xmlHttp.getResponseHeader('Date');
	} else if (window.ActiveXObject) {
		xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
		xmlHttp.open('HEAD', window.location.href.toString(), false);
		xmlHttp.setRequestHeader('Content-Type', 'text/html');
		xmlHttp.send('');
		return xmlHttp.getResponseHeader('Date');
	}
}

function start_date() {
	var date = new Date(srvTime());
	var year = date.getFullYear();
	var month = (date.getMonth() + 1) < 10 ? '0' + (date.getMonth() + 1)
			: (date.getMonth() + 1);
	var day = (date.getDate() + 0) < 10 ? '0' + date.getDate() : date.getDate();
	document.myform.create_date.value = year + '-' + month + '-' + day;
}	

