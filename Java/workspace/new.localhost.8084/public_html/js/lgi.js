function check_input()
{
    if (!document.lgi_form.id.value)
    {
        alert("아이디를 입력하세요");    
        document.lgi_form.id.focus();
        return;
    }

    if (!document.lgi_form.pass.value)
    {
        alert("비밀번호를 입력하세요");    
        document.lgi_form.pass.focus();
        return;
    }
    document.lgi_form.submit();
}