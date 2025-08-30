var trns_cnt = 0;
function script_trns_form_submit_ajax(formData,next_move_page,message_text){
	if(trns_cnt==0){
		trns_cnt++;
	    $.ajax({
	        url: '/trans_page_file/', 
	        type: 'POST',
	        cache: false,
	        data: formData,
	        enctype: 'multipart/form-data',
	        processData: false,
	        contentType: false,
	        timeout: 100000,
	        dataType: 'json',
	        success: function (data) {
	        	if(data.error){
	        		alert(data.error);
        			location.reload();
	    			//console.log(data);
	    		}else{
	    			message_text ? alert(message_text) : false;
	    			next_move_page ? next_move_page=="reload" ? location.reload() : location.href=next_move_page : false;
	    		}
	        },
	        error: function (request, status, error) {
	        	alert("입력 중 오류가 발생했습니다. 관리자에게 문의해주세요.");
	            console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
	        }
	    });
	}
}