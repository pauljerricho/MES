  function check_input() {
  	  if (!document.msg_form.rv_id.value)
      {
          alert("수신 아이디를 입력하세요!");
          document.msg_form.rv_id.focus();
          return;
      }
      if (!document.msg_form.subject.value)
      {
          alert("제목을 입력하세요!");
          document.msg_form.subject.focus();
          return;
      }
      if (!document.msg_form.content.value)
      {
          alert("내용을 입력하세요!");    
          document.msg_form.content.focus();
          return;
      }
      document.msg_form.submit();
   }