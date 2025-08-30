$(document).ready(function(){
   /*js 스크립트 불러오기*/
   js_reonload_src("datepicker");
   javascript_onload_src("script_next_focus");
   
   /*FORM 태그 삽입하기*/
   script_new_reformdata(".sub_con","myform","pr_or_check_reg.html","insert");
   
   //등로버튼
   $(".bot_btn > .save").click(function(){
      location.href='/obtain_order/pr_or_check.html';
   });
   javascript_onload_src("script_ajax_layer_pop");
   $("#c_name").click(function(){
      script_ajax_layer_pop('/obtain_order/popup_guest.html',"",'.popup-31');
   });

   //납기일자 높이설정
   if($(window).width()>768){
      $("#due_table").css("height",$("#order_table").outerHeight());
   }
   
   //발주자
   
   //납품처 주소
   $("#myform").on("focus", "#od_post", function() {
      script_ajax_layer_pop('/popup/popup_home.html','post=od_post&address=od_address','.popup-31');
   });
   
   //발주자 체크
   $("#myform").on("click", ".mt_number, .p_name, .standard, .p_unit, .box_quantity, .sacks_unit", function() {
      script_ajax_layer_pop('/obtain_order/popup_product.html', jQuery('#myform').serialize(), '.popup-31');
   });
   
   //등록 버튼
   $("#myform .bot_btn > .save").click(function(){
      location.href='/obtain_order/pr_or_check.html';
   });
   
   //데이터테이블
   $("#table thead tr").prepend("<th>상세</th>");
   $("#table tbody tr").prepend("<td>상세</td>");
   var table = $("#table").DataTable({
      lengthChange : false, // 표시 건수기능 숨기기
      searching : false, // 검색 기능 숨기기
      ordering : false, // 정렬 기능 숨기기
      info : false, // 정보 표시 숨기기
      processing : false, // 페이징 기능 숨기기
      serverMethod : 'post',
      order : [ 1, "desc" ],
      dataType : "json",
      paging : false,
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
        }]
   });
   
   new $.fn.dataTable.Responsive( table );
   
   //추가버튼 
   $('#add_row2').on( 'click', function () {
      draw_row(table);
   });
   
   //삭제버튼
   $("#myform").on("click", ".btn_plma", function(){
      table.row($(this).parents('tr')).remove().draw();
      no_display();
   });
   
   headerFixed();
   no_display();
});
function draw_row(table,data){
   if(!data){
      var data = new Array();
      data = {"od_no":"","p_name":"","mt_number":"","quantity":"","quantity2":"","quantity3":"","p_price":"","price_sum":"","vat_sum":"","total_sum":"","box_quantity":"","sacks_unit":"","p_unit":"","standard":"","sum":""};
   }else{
      !data['od_no'] ? data['od_no']="" : false;
      !data['p_name'] ? data['p_name']="" : false;
      !data['mt_number'] ? data['mt_number']="" : false;
      !data['quantity'] ? data['quantity']="" : false;
      !data['quantity2'] ? data['quantity2']="" : false;
      !data['quantity3'] ? data['quantity3']="" : false;
      !data['p_price'] ? data['p_price']="" : false;
      !data['price_sum'] ? data['price_sum']="" : false;
      !data['vat_sum'] ? data['vat_sum']="" : false;
      !data['total_sum'] ? data['total_sum']="" : false;
      !data['box_quantity'] ? data['box_quantity']="" : false;
      !data['sacks_unit'] ? data['sacks_unit']="" : false;
      !data['p_unit'] ? data['p_unit']="" : false;
      !data['standard'] ? data['standard']="" : false;
      !data['sum'] ? data['sum']="0" : false;
   }
   var req_stock = 0;
   if(Number(data.quantity) > Number(data.sum)){
      req_stock = Number(data.quantity) - Number(data.sum);
   }
   
   table.row.add([
      "<td class='control' tabindex='0'>상세</td>",
        "<div class='btn_plma btn_number' title='제거'>-</div><input type='hidden' name='od_no[]' value='"+data['od_no']+"'>",
        "<input type='text' class='mt_number' name='mt_number[]' value='"+data['mt_number']+"' readonly><input type='text' class='p_name' name='p_name[]' value='"+data['p_name']+"' readonly>",
        "<input type='text' class='standard' value='"+data['standard']+"' readonly><input type='text' class='p_unit' value='"+data['p_unit']+"' readonly>",
        "<input type='text' class='sacks_unit' value='"+data['sacks_unit']+"' readonly><input type='text' class='box_quantity' value='"+data['box_quantity']+"' readonly>",
        "<input type='text' class='quantity3' name='quantity3[]' value='"+data['quantity3']+"'>",
        "<input type='text' class='quantity2' name='quantity2[]' value='"+data['quantity2']+"'>",
        "<input type='text' class='quantity' name='quantity[]' value='"+data['quantity']+"'>",
        "<input type='text' class='p_price' name='p_price[]' value='"+data['p_price']+"' readonly>",
        "<input type='text' class='price_sum' name='price_sum[]' value='"+data['price_sum']+"' readonly>",
        "<input type='text' class='vat_sum' name='vat_sum[]' value='"+data['vat_sum']+"' readonly>",
        "<input type='text' class='total_sum' name='total_sum[]' value='"+data['total_sum']+"' readonly>",
        "<input type='text' class='stock' value='"+data['sum']+"' readonly><input type='text' class='req_stock' value='"+req_stock+"' readonly>"
    ]).draw(false);
   no_display();
}
function no_display(){ // 행 삭제 - 숫자입력
   var a1 = $('.btn_number').length;
   for(var i=1;i<=a1;i++){
      $('.btn_number').eq(i-1).text(i);
   }
}
function headerFixed(){
   //리스트 상단 헤더 고정
   var winWidth = $(document).width();
   var menuOffset = $("#table thead").offset();
   var tableWidth = $("#table").innerWidth();
   var colArr = [0,5,8,8,8,8,8,8,8,8,8,8,8,7];
   $("#table thead").css("width",tableWidth);
   $("#table thead tr th").each(function(i,v){
      var colWidth = tableWidth * colArr[i] / 100;
      $(this).css("width",colWidth+"px");
   });
   if(winWidth>768){
      $(window).scroll(function() {
         if($(document).scrollTop() > menuOffset.top) {
            $("#table thead").addClass('menuFixed');
         }else{
            $("#table thead").removeClass('menuFixed');
         }
      });
   }
}