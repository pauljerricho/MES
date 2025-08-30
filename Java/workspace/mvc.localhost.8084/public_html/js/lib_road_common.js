var js_onsrc_list = [];
function javascript_onload_src(js_modname){
	if(typeof(js_modname)!='function' && this.js_onsrc_list.indexOf(js_modname)==-1){
		var headTag = document.getElementsByTagName("head")[0];     
		var newScript = document.createElement('script');
		newScript.type = 'text/javascript';
		newScript.id = js_modname;
		newScript.src = '/trans_modul_js/?mod='+js_modname;
		headTag.appendChild(newScript);
		newScript.onload = function() { console.log(newScript.id+'.js 자바스크립트 로드 완료') };
		this.js_onsrc_list.push(js_modname);
	}
}

function javascript_onload_ajax_link(js_modname,ajax_link_page){
	var headTag = document.getElementsByTagName("head")[0];
	var newScript = document.createElement('script');
	newScript.type = 'text/javascript';
	newScript.onload = function() { console.log(ajax_link_page+'.'+js_modname+'.js 자바스크립트 로드 완료') };
	newScript.src = '/trans_modul_js/?mod='+js_modname+'&ajax_link_page='+ajax_link_page;
	newScript.crossorigin = 'anonymous';
	newScript.async = '';
	headTag.appendChild(newScript);
}

function js_onload_src(js_modname){
	if(typeof(js_modname)!='function' && this.js_onsrc_list.indexOf(js_modname)==-1){
		var headTag = document.getElementsByTagName("head")[0];     
		var newScript = document.createElement('script');
		newScript.type = 'text/javascript';
		newScript.id = js_modname;
		newScript.src = '/js/'+js_modname+'.js';
		headTag.appendChild(newScript);
		newScript.onload = function() { console.log(newScript.id+'.js 자바스크립트 로드 완료') };
		this.js_onsrc_list.push(js_modname);
	}
}

function script_new_reformdata(div_selector,form_name,ajax_link_page,mod){
	var myform = $('<form>'+$(div_selector).clone().wrapAll("<div/>").parent().html()+'</form>');
	myform.attr('name',form_name);
	myform.attr('id',form_name);
	myform.attr('enctype',"multipart/form-data");
	myform.append($('<input/>',{type:'hidden',name:'ajax_link_page',value:ajax_link_page}));
	myform.append($('<input/>',{type:'hidden',name:'mod',value:mod}));
	$(div_selector).replaceWith(myform);
}

var css_onsrc_list = [];
function css_onload_src(css_modname){
	if(typeof(css_modname)!='function' && this.css_onsrc_list.indexOf(css_modname)==-1){
		var headTag = document.getElementsByTagName("head")[0];     
		var newLink = document.createElement('link');
		newLink.type = 'text/css';
		newLink.media = 'all';
		newLink.rel = 'stylesheet';
		newLink.id = css_modname;
		newLink.href = '/css/'+css_modname+'.css';
		headTag.appendChild(newLink);
		newLink.onload = function() { console.log(newLink.id+'.css 스타일 로드 완료') };
		this.css_onsrc_list.push(css_modname);
	}
}
