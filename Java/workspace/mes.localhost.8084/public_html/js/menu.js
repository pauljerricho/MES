/*gnb*/
$(function() {
	$(".utility > li").hover(function() {
		$('span', this).show();
	}, function() {
		$('span', this).hide();
	});
});

/* 페이지 리사이즈 사진 하이트 */
/*
 * $(document).ready(function(){ var w= $('.picture').width(); var h=
 * $('.picture').height(w); var ulh = $('.side_bar').height(); var uls =
 * $('.side_bar li').height(); uls = $('.side_bar li').height(ulh*0.1);
 * 
 * 
 * $(window).resize(function(){ w= $('.picture').width(); h=
 * $('.picture').height(w); });
 * 
 * });
 */

/* menu_tab */
$(function() {

});

/* menu */
/*
 * $(function() { $("ul.side_bar > li").addClass('menu'); });
 */

/* menu_box */
/*
 * $(document).ready(function(){ var mb = true; $('ul.side_bar >
 * li').click(function() { var inde = $(this).index(); if (mb == true) {
 * $('ul.side_bar > li').removeClass('on') $(this).addClass('on')
 * $('.menu_box').eq(inde).animate({ left : 110 }); $(this).animate({ left : 0
 * }); $('.service_menu_btn').animate({ left : 420 }); mb = false; } else {
 * 
 * $('.menu_box').animate({ left : -310 }); $('.service_menu_btn').animate({
 * left : -100 }); mb = true; } }); })
 */

/* menu_box */
$(function() {
	$(".btn_menu").click(function() {
		$(".m_menu").css({"display":"block"});
		setTimeout(function(){
			$(".m_menu").css({"left":"0"});
			$('#mlay').fadeIn();
			$('body').css('overflow','hidden');
		},100);
	});
	$('#mlay .mbg').click(function(e) {
		$(".m_menu").css("left","-50%");
		$('#mlay').fadeOut();
		e.preventDefault();
		$('html, body').css('overflow','visible');
	});
	$(".sub_menu ul li a").click(function(){
		$(".m_menu, #mlay").css("display","none");
		$(".m_menu").css("left","-50%");
		$('html, body').css('overflow','visible');
	});
});

/* menu */
$(function() {

});

$(function() {

});

/* 팝업 버튼 */
/*
 * $(document).ready(function(){ $('#btn_popup, .btn_popup').click(function(){
 * 
 * $('.pop_wrap, .background').css({'display':'block'}); });
 * 
 * $('#btn_popup2 ,.btn_popup2').click(function(){
 * 
 * $('.pop_wrap2, .background').css({'display':'block'}); //
 * $('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('#btn_popup3 ,.btn_popup3').click(function(){
 * 
 * $('.pop_wrap3, .background').css({'display':'block'}); //
 * $('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('#btn_popup4 ,.btn_popup4').click(function(){
 * 
 * $('.pop_wrap4, .background').css({'display':'block'}); //
 * $('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('#btn_popup_mix ,.btn_popup_mix').click(function(){
 * 
 * $('.pop_wrap_mix, .background').css({'display':'block'});
 * //$('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('#btn_popup_home ,.btn_popup_home').click(function(){
 * 
 * $('.pop_wrap_home, .background').css({'display':'block'});
 * //$('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('#btn_popup_check ,.btn_popup_check').click(function(){
 * 
 * $('.pop_wrap_check, .background').css({'display':'block'});
 * //$('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('#btn_popup_take ,.btn_popup_take').click(function(){
 * 
 * $('.pop_wrap_take, .background').css({'display':'block'});
 * //$('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('#btn_popup_over ,.btn_popup_over').click(function(){
 * 
 * $('.pop_wrap_over, .background').css({'display':'block'});
 * //$('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('#btn_popup_start ,.btn_popup_start').click(function(){
 * 
 * $('.pop_wrap_start, .background').css({'display':'block'});
 * //$('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('#btn_popup_in ,.btn_popup_in').click(function(){
 * 
 * $('.pop_wrap_in, .background').css({'display':'block'});
 * //$('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('#btn_popup_ou ,.btn_popup_ou').click(function(){
 * 
 * $('.pop_wrap_ou, .background').css({'display':'block'});
 * //$('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('#btn_popup5 ,.btn_popup5').click(function(){
 * 
 * $('.pop_wrap5, .background').css({'display':'block'});
 * //$('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('#btn_popup_barcode ,.btn_popup_barcode').click(function(){
 * 
 * $('.pop_wrap_barcode, .background').css({'display':'block'});
 * //$('body').css({'overflow-y':'hidden'});;
 * 
 * });
 * 
 * $('.down, .background').click(function(){
 * $('.background').css({'display':'none'});
 * $('.pop_wrap_barcode').css({'display':'none'});
 * $('.pop_wrap_ou').css({'display':'none'});
 * $('.pop_wrap_in').css({'display':'none'});
 * $('.pop_wrap_start').css({'display':'none'});
 * $('.pop_wrap_take').css({'display':'none'});
 * $('.pop_wrap_over').css({'display':'none'});
 * $('.pop_wrap_check').css({'display':'none'});
 * $('.pop_wrap_home').css({'display':'none'});
 * $('.pop_wrap_mix').css({'display':'none'});
 * $('.pop_wrap5').css({'display':'none'});
 * $('.pop_wrap4').css({'display':'none'});
 * $('.pop_wrap3').css({'display':'none'});
 * $('.pop_wrap2').css({'display':'none'});
 * $('.pop_wrap').css({'display':'none'}); //
 * $('body').css({'overflow-y':'scroll'}); });
 * 
 * });
 */


/* menu_box ver2 */
$(document).ready(function() {

});

$(document).ready(function() {

})

// 자동완성
$(document).ready(function() {
	var menu_in = "<a0><a1><a2><a3><a4><a5><a8><a9><a10><a11><a12><a13><a14><z1><z4><b0><b1><b3><b5><c0><c1><c2><d0><d1><d2><d3><d4><d5><e0><e1><e2><e3><e4><e5><e6><f0><f1><f2><f3><f4><f5><f6><h0><h1><h2><h3><h4>";
	if (menu_in.indexOf('<z1>') != -1) { // 메뉴권한에 자동완성권한이 있는지
		// 여부 확인
		var input_count = $('input[type="text"]').length;
		var input_nvalue = new Array();
		var input_name = new Array();
		for (i = 0; i < input_count; i++) {
			input_name[i] = $('input[type="text"]').eq(i).prop('name');
			if (getCookie(input_name[i] + '_') != null) {
				input_nvalue[i] = getCookie(input_name[i] + '_').split("|");
				$("#" + input_name[i]).autocomplete({
					source : input_nvalue[i]
				});
			} else {
				input_nvalue[i] = new Array();
			}
		}

		$('.save').click(function() {// inputd의 갯수
			var input_jnvalue = new Array();
			for (i = 0; i < input_count; i++) {
				var inputvalue = $('#' + input_name[i]).val();
				if ($.inArray(inputvalue,input_nvalue[i]) == -1) {
					// $('#input_name').val();이
					// input_nvalue[i]의
					// 배열안에
					// 값이
					// 없으면
					if (input_nvalue[i].length >= 10) {// 배열
						// 갯수가
						// 10개
						// 이상이면
						input_nvalue[i].shift();// 앞에 한개
						// 제거후
					}
					input_jnvalue[i] = input_nvalue[i].join('|', input_nvalue[i].push(inputvalue));
					setCookie(input_name[i] + '_',input_jnvalue[i],2147483640);
				}
			}
		});
	}
});

/* 퀵바 */

$(document).ready(function() {
	$(".quick_wrap").draggable(

	);
});


//$.svk.init();
$(document).ready(function() {

});
	
$(document).ready(function() {
	// input 필드에서 엔터시
	$($('input[type="text"],[type="number"]')).on('keypress',function(e) {
		if (e.keyCode == '13') {
			$('input[type="text"],[type="number"]').eq($('input[type="text"],[type="number"]').index(e.target) + 1).focus();
			var i = 1;
			while ($('input[type="text"],[type="number"]').eq($('input[type="text"],[type="number"]').index(e.target)+ i).is('[readonly]')) {
				$('input[type="text"],[type="number"]').eq($('input[type="text"],[type="number"]').index(e.target)+ i + 1).focus();
				i++;
			}
		}
	});
});