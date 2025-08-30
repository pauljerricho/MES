
/*$(document).ready(function(){
   //2019_03_11 문귀현 추가사항 - 모든페이지 카피라이트
   $(".content").after("<div id='copy'><div id='copy_wrap'><br><address>Copyright 2019 ⓒ (주)명리 All Rights Reserved.</address></div></div>");
   
   
   
   var header_height = $(".header_wrap").outerHeight();
   var footer_height = $("#copy").outerHeight();
   var body_height = $(window).height() - header_height - footer_height;
   var side_height = $("ul.side_bar div.menu_box").eq(0).height();

   if ($(".content").height() < side_height) {
	   $(".content").height(side_height);
   }
});*/
  
  /*2019 01 07 박인범 추가사항*/
  //btn_plma 의 갯수가 1개일때 삭제 불가
$(document).ready(function(){
   var btn_plma_index = $('.table_ri .btn_plma').length;
   if(btn_plma_index == 1){
      $('.btn_plma').css({'pointer-events':'none'});
   }  
   
   $(document).on('click','.table_ri tr:nth-of-type(1) th:nth-of-type(1)',function(){

      btn_plma_index = $('.table_ri .btn_plma').length;
      if( btn_plma_index == 1 ) {
         $('.btn_plma').css({'pointer-events':'none'});
      }
      else {
         $('.btn_plma').css({'pointer-events':'auto'});
      }

   })


   $(document).on('click','.btn_plma',function(){
      btn_plma_index = $('.table_ri .btn_plma').length;
      
      if(btn_plma_index == 1){
         $('.btn_plma').css({'pointer-events':'none'});
      }
      else {
         $('.btn_plma').css({'pointer-events':'auto'});
      }
   });

   

})
  

  
  