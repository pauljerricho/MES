function script_ajax_layer_pop(url, data, pop_name) {
	$('html body').css({
		'overflow' : 'hidden'
	});
	$.ajax({
		type : 'post',
		url : url,
		data : data,
		dataType : 'html',
		async : false,
		error : function(xml) {
			alert('오류입니다.');
		},
		success : function(data) {
			var bg2 = '.bg';
			var bg3 = bg2.split('.');
			var bg4 = bg3[1];
			var bg = $('#lay2').prev().hasClass(bg4);

			if (bg) {
				/* 모달창관련 */
				var s_top = $(window).scrollTop();
				var w_ht = $(window).innerHeight() / 2;
				var m_ht = $(pop_name).innerHeight() / 2;
				var t_ht = s_top + (w_ht - m_ht) + "px";
				var ht = $(document).innerHeight();
				$(pop_name).css({
					"top" : s_top + "px",
					"display" : "flex"
				});
				$('#lay').fadeIn();
			} else {
				$('#lay2').fadeIn();
			}
			$('#lay #lay2').click(function(e) {// 배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
				if (e.target !== e.currentTarget) return;
				$('#lay').fadeOut();
				e.preventDefault();
				$('html, body').css({
					'overflow' : 'visible'
				});
			});
			// alert(data);
			$('#lay2').html(data);

			// 닫기 버튼을 눌렀을 때
			$(pop_name + ' .popup_close').click(function(e) {
				// 링크 기본동작은 작동하지 않도록 한다.
				$('#lay').fadeOut();
				e.preventDefault();
				$('#bg, ' + pop_name).hide();
			});

			// 애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.
			// $('#lay2').fadeIn(0);
			// $('#lay2').fadeTo('slow',0.5);
			$(pop_name).show();
			$('#search_key').focus();

		}
	});
	var q_keyd = getCookie('keyboard_on');
	if (q_keyd == 'ok') {
		$('.q_keyboard p').text('작동중');
		$('.q_keyboard p').css('color', '#e85757');
		$('.q_keyboard img').attr('src', '/img/q_keyboard_on.png');
		$('input[type=text]').addClass('hangulField');
	} else {
		$('.q_keyboard p').text('자판');
		$('.q_keyboard p').css('color', '#fff');
		$('.q_keyboard img').attr('src', '/img/q_keyboard.png');
		$('input[type=text]').removeClass('hangulField');
	}
}