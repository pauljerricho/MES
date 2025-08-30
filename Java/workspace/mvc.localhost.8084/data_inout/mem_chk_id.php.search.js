$(document).ready(function(){
   const urlParams = new URLSearchParams(location.search);
   var u_id = urlParams.get("u_id");
   
   $.ajax({
      url:'/trans_page_file/',
      type: 'POST',
      cache: false,
      data:{
         "mod":"data",
         "u_id":u_id
      },
      dataType: 'json',
      success:function(data){
         var notice = "";
         if(!u_id){
            notice = "<li>아이디를 입력해 주세요!</li>";
         }else{
            if(data.chk){
               notice = "<li>"+u_id+" 아이디는 중복 됩니다.</li><li>다른 아이디를 사용해 주세요!.</li>";
            }else{
               notice = "<li>"+u_id+" 아이디는 사용 가능합니다.</li>";
            }
         }
         $("p").append("<ul>"+notice+"</ul>");
      },
      error:function(request,status,error){
         alert("데이터 조회 중 오류가 발생했습니다.");
         console.log("code:"+request.status +"\nmessage:"+request.responseText+"\nerror:"+error);
      }
   });

   $("div").click(function(){
      $(opener.document).find("input[name=id_dup]").val(u_id);
      window.close();
   });
});