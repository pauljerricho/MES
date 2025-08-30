$(document).ready(function() {
	/*페이지 새로고침 방지*/
	var chkload = true;
	$(window).on("beforeunload", function() {
		if(chkload) return true;
	});	
	$("html").on("click",".logo a, ul.lnb > li > a",function(){
		chkload = false;
	});
	
	/*js 스크립트 불러오기*/
	javascript_onload_src("script_ajax_layer_pop");
	javascript_onload_src("barcode_press");
	$(document).bind("keypress", function(event){ barcode_press(event); });
	
	/* li_3,li_4 enter */
	$('.gom_wrap li div').click(function() {
		$('.gom_wrap li div').removeClass('ch_over')
		$(this).addClass('ch_over');
	});
	$('.gom_wrap li input').click(function() {
		$('.gom_wrap li div').removeClass('ch_over')
		$(this).prev().addClass('ch_over');
	});
	
	/* 서브텝 */
	$('.sub_teb li').click(function() {
		$('.sub_teb li').removeClass('teb_on');
		$(this).addClass('teb_on');
	});
	
	if ("" && "" != 6) {
		$('.sub_teb li').eq().addClass('teb_on');
	} else {
		$('.sub_teb li').eq(0).addClass('teb_on');
	}
	var li = $('.no_qnt');
	var ck = $('.no_qnt_ck');
	for (var i = 0; i < $(li).length; i++) {
		// alert(removeComma($(ck[i]).val())*1);
		if (removeComma($(ck[i]).val()) * 1 > 0) {
			// alert(i+" : "+removeComma($('.no_qnt_ck').eq(i).val())*1);
			$(li[i]).addClass('red');
		}
	}
});

function javascript_onload_src(js_modname){
	if(typeof(js_modname)!='function'){
		var headTag = document.getElementsByTagName("head")[0];     
		var newScript = document.createElement('script');
		newScript.type = 'text/javascript';
		newScript.onload = function() { console.log(js_modname+'.js 자바스크립트 로드 완료') };
		newScript.src = '/trans_modul_js/?mod='+js_modname;
		headTag.appendChild(newScript);
		//return newScript;
	}
}

function javascript_onload_ajax_link(js_modname,ajax_link_page){
		var headTag = document.getElementsByTagName("head")[0];
		var newScript = document.createElement('script');
		newScript.type = 'text/javascript';
		newScript.onload = function() { console.log(ajax_link_page+'.'+js_modname+'.js 자바스크립트 로드 완료') };
		newScript.src = '/trans_js/?mod='+js_modname+'&ajax_link_page='+ajax_link_page;
		newScript.crossorigin = 'anonymous';
		newScript.async = '';
		headTag.appendChild(newScript);
		//return newScript;
}