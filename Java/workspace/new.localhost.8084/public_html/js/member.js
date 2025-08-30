   function check_input()
   {
      if (!document.mem_form.id.value) {
          alert("아이디를 입력하세요!");    
          document.mem_form.id.focus();
          return;
      }
      
      if (document.mem_form.id_dup.value!="ok") {
          alert("아이디 중복확인을 하세요!");    
          document.mem_form.id.focus();
          return;
      }

      if (!document.mem_form.pass.value) {
          alert("비밀번호를 입력하세요!");    
          document.mem_form.pass.focus();
          return;
      }

      if (!document.mem_form.pass_confirm.value) {
          alert("비밀번호확인을 입력하세요!");    
          document.mem_form.pass_confirm.focus();
          return;
      }

      if (!document.mem_form.name.value) {
          alert("이름을 입력하세요!");    
          document.mem_form.name.focus();
          return;
      }

      if (!document.mem_form.email1.value) {
          alert("이메일 주소를 입력하세요!");    
          document.mem_form.email1.focus();
          return;
      }

      if (!document.mem_form.email2.value) {
          alert("이메일 주소를 입력하세요!");    
          document.mem_form.email2.focus();
          return;
      }

      if (document.mem_form.pass.value != 
            document.mem_form.pass_confirm.value) {
          alert("비밀번호가 일치하지 않습니다.\n다시 입력해 주세요!");
          document.mem_form.pass.focus();
          document.mem_form.pass.select();
          return;
      }

      document.mem_form.submit();
   }

   function reset_form() {
      document.mem_form.id.value = "";  
      document.mem_form.pass.value = "";
      document.mem_form.pass_confirm.value = "";
      document.mem_form.name.value = "";
      document.mem_form.email1.value = "";
      document.mem_form.email2.value = "";
      document.mem_form.id.focus();
      return;
   }

   function check_id() {
     window.open("mem_chk_id.php?id=" + document.mem_form.id.value,
         "IDcheck",
          "left=700,top=300,width=350,height=200,scrollbars=no,resizable=yes");
   }