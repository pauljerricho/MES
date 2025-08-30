   function check_input()
   {
      if (!document.myform.id.value) {
          alert("아이디를 입력하세요!");    
          document.myform.id.focus();
          return;
      }

      if (!document.myform.pass.value) {
          alert("비밀번호를 입력하세요!");    
          document.myform.pass.focus();
          return;
      }

      if (!document.myform.pass_confirm.value) {
          alert("비밀번호확인을 입력하세요!");    
          document.myform.pass_confirm.focus();
          return;
      }

      if (!document.myform.name.value) {
          alert("이름을 입력하세요!");    
          document.myform.name.focus();
          return;
      }

      if (!document.myform.email1.value) {
          alert("이메일 주소를 입력하세요!");    
          document.myform.email1.focus();
          return;
      }

      if (!document.myform.email2.value) {
          alert("이메일 주소를 입력하세요!");    
          document.myform.email2.focus();
          return;
      }

      if (document.myform.pass.value != 
            document.myform.pass_confirm.value) {
          alert("비밀번호가 일치하지 않습니다.\n다시 입력해 주세요!");
          document.myform.pass.focus();
          document.myform.pass.select();
          return;
      }

      document.myform.submit();
   }

   function reset_form() {
      document.myform.id.value = "";  
      document.myform.pass.value = "";
      document.myform.pass_confirm.value = "";
      document.myform.name.value = "";
      document.myform.email1.value = "";
      document.myform.email2.value = "";
      document.myform.id.focus();
      return;
   }

   function check_id() {
     window.open("member_check_id.php?id=" + document.myform.id.value,
         "IDcheck",
          "left=700,top=300,width=350,height=200,scrollbars=no,resizable=yes");
   }