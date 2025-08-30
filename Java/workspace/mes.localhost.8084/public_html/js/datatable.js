$(document).ready(function(){
	$('.totalsum').on('keyup',function(){
		$('#tip_index').val($('.totalsum').index(this));
		var a1 = removeComma($('.totalsum').eq($('#tip_index').val()).val()); // 합계
		var a2 = removeComma($('.quantity').eq($('#tip_index').val()).val()); // 발주량
		var a3 = (a1/1.1).toFixed(0); // 공급가액
		var a4 = a1 - a3; // 부가세
		if(a2>0){
			var a5 = (a3/a2).toFixed(0); // 단가
		}else{
			var a5 = 0;
		}
		$('.p_price').eq($('#tip_index').val()).val(addComma(a5));
		$('.pricesum').eq($('#tip_index').val()).val(addComma(a3));
		$('.vat').eq($('#tip_index').val()).val(addComma(a4));
		$('.totalsum').eq($('#tip_index').val()).val(addComma(a1));
	});
});

function replace_url(url) {
    url= url.replace(/&/g,"%26"); 
    url= url.replace(/\+/g,"%2B"); 
    return url;
}
	
function no_display(){ // 행 삭제 - 숫자입력
	var a1 = $('.btn_number').length;
	for(var i=1;i<=a1;i++){
		$('.btn_number').eq(i-1).html(i);
	}
}
