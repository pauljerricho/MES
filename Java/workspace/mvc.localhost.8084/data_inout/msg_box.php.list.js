$(document).ready(function(){

	const urlParams = new URLSearchParams(location.search);
	var mode = urlParams.get("mode");

	if(mode=="send"){
		var id_txt = "rv_id";
		$("#msg_box h3").text("송신 메세지함 > 목록보기");
		$("#mytable tr:nth-child(1) > th:nth-child(3)").text("받은이");
	}else{
		var id_txt = "send_id";
		$("#msg_box h3").text("수신 메세지함 > 목록보기");
		$("#mytable tr:nth-child(1) > th:nth-child(3)").text("보내는이");
	}	

	$("#mytable thead tr").prepend("<th>상세</th>");
	var table_data = $("#mytable").DataTable({
		ajax:{
			url:"/trans_page_file/",
			async:false,
			data:{
				'mod':'data',
				'mode':mode
			}
		},
		columns:[
			{data:null},
			{data:'article_num'},
			{data:'subject',
				render:function(subject,type,data){
					return "<a href='msg_view.php?mode="+mode+"&num="+data.num+"'>"+subject+"</a>";
				}
			},
			{data:'name',
				render:function(name,type,data){
					return name+"("+data.id_text+")";
				}
			},
			{data:'regist_day'}
		],
		lengthChange : false, // 표시 건수기능 숨기기
		searching : false, // 검색 기능 숨기기
		ordering : true, // 정렬 기능 숨기기
		info : false, // 정보 표시 숨기기
		processing : false, // 페이징 기능 숨기기
		serverMethod : 'post',
		serverSide: true,
		order : [ 1, "desc" ],
		dataType : "json",
		paging : true,
		pageLength : 10,
		pagingType : "full_numbers",
		dom : 'rt<"bottom"iflp>',
		language : {
	        "emptyTable": "데이터가 없습니다.",
	        "lengthMenu": "페이지당 _MENU_ 개씩 보기",
	        "info": "현재 _START_ - _END_ / _TOTAL_건",
	        "infoEmpty": "데이터 없음",
	        "infoFiltered": "( _MAX_건의 데이터에서 필터링되었습니다. )",
	        "search": "",
	        "zeroRecords": "일치하는 데이터가 없습니다.",
	        "loadingRecords": "로딩중...",
	        "processing":  false,
	        "paginate": {
	            "next": "다음",
	            "previous": "이전",
	            "first": '처음',
	            "last": '끝'
	        }
		},
		responsive: {
            details: {
                type: 'column'
            }
        },
        columnDefs: [ {
            className: 'control',
            orderable: false,
            targets:   0
          }
        ]		
	});

	new $.fn.dataTable.Responsive(table_data);
}); 