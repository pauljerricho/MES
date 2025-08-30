//c# remote print
(async function(){
	await CefSharp.BindObjectAsync('nativeSmartFactory');
})();
function script_print_remote(paperType, printData){
	try{
		if(script_mobile_check()){
			SfAndroid.requestPrintRemote(paperType, printData);
		}else{
			nativeSmartFactory.requestPrintRemote(paperType, printData);
		}
	}catch(e){
		PrintForExternal(printData);
		//alert(e)
	}
}
function script_mobile_check(){
	return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
}
function ResponsePrintRemoteHandler(response){
	alert(response);
}
function PrintForExternal(data){
	var strSubmit;
	data = JSON.parse(data);
	switch(data.printMode){
		case "box":
			strSubmit = PrintBarcodeQty(data);break;
		default :
			strSubmit = window["PrintBarcode_"+data.printMode](data);break;
	}
	xmlhttpPost("Printer1", strSubmit);
}

var script_print = function() {
	var strFeature = '';
	strFeature += 'width=10, height=2, all=no';

	var objWin = window.open('', 'print', strFeature);
	objWin.document.write(document.getElementById('boarcode_pr_text').innerHTML);
	objWin.document.close();

	objWin.print();
	objWin.close();
};

var issueID = 1;

function generateBarcode(){
	var value = $('#barcodeValue').val();
	var title = $('#barcode_name').val();
	var btype = $('#code39').val();
	var renderer = $('#css').val();
	var quietZone = false;
	if ($('#quietzone').is(':checked') || $('#quietzone').attr('checked')){
		quietZone = true;
	}

	var settings = {
		output:renderer,
		bgColor: $('#bgColor').val(),
		color: $('#color').val(),
		barWidth: $('#barWidth').val(),
		barHeight: $('#barHeight').val(),
		moduleSize: $('#moduleSize').val(),
		posX: $('#posX').val(),
		posY: $('#posY').val(),
		addQuietZone: $('#quietZoneSize').val(),
		fontSize:'15px;'
	};
	if ($('#rectangular').is(':checked') || $('#rectangular').attr('checked')){
		value = {code:value, rect: true};
	}
	if (renderer == 'canvas'){
		clearCanvas();
		$('.barcodeTarget').hide();
		$('#canvasTarget').show().barcode(value, btype, settings,title);
	} else {
		$('#canvasTarget').hide();
		$('.barcodeTarget').html('').show().barcode(value, btype, settings,title);
	}
}
         
function showConfig1D(){
	$('.config .barcode1D').show();
	$('.config .barcode2D').hide();
}
     
function showConfig2D(){
	$('.config .barcode1D').hide();
	$('.config .barcode2D').show();
}
     
function clearCanvas(){
	var canvas = $('#canvasTarget').get(0);
	var ctx = canvas.getContext('2d');
	ctx.lineWidth = 1;
	ctx.lineCap = 'butt';
	ctx.fillStyle = '#FFFFFF';
	ctx.strokeStyle  = '#000000';
	ctx.clearRect (0, 0, canvas.width, canvas.height);
	ctx.strokeRect (0, 0, canvas.width, canvas.height);
}

function toHexBinary(s){
	var l=s.length,r=new Array(l),i;
	for(i=0;i<l;i++){
		r[i]=("0"+s.charCodeAt(i).toString(16)).slice(-2)
	}
	return r.join("")
}
function sleep(delay) {
   var start = new Date().getTime();
   while (new Date().getTime() < start + delay);
}

function checkResult(strPrinterName, requestId, responseId) {
 	var strURL = "http://127.0.0.1:8080/webdriver/"+ strPrinterName +"/"+responseId;
	var xmlHttpCheck;
	// Chrome/Mozilla/Safari, IE7 or later
	if (window.XMLHttpRequest) {
	        xmlHttpCheck = new XMLHttpRequest();
	}
	// IE6 or older version
  else if (window.ActiveXObject) {
          xmlHttpCheck = new ActiveXObject("Microsoft.XMLHTTP");
  }
	
	var strSubmit = "{\"RequestID\":"+requestId+",\"ResponseID\":\""+responseId+"\"}";
	        
	xmlHttpCheck.open('GET', strURL, true);
	xmlHttpCheck.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	xmlHttpCheck.send(strSubmit);
	xmlHttpCheck.onreadystatechange = function() {
		if (xmlHttpCheck.readyState == 4 && xmlHttpCheck.status == 200) {
	    var res = JSON.parse(xmlHttpCheck.responseText);
	  	var reqId = res.RequestID;
	  	var resId = res.ResponseID;
	  	var ret = res.Result;
	  	if(ret.search("ready") >= 0 || ret.search("progress") >= 0)	{
	  		sleep(1000);
				checkResult(strPrinterName, reqId, resId);
	  	}
	  	else {
				p_result.value = res.ResponseID + ":"+ ret;
			}
	  }
	  else if (xmlHttpCheck.readyState == 4 && xmlHttpCheck.status == 404) {
	     	p_result.value = "No printers";
	  }	
	  else if(xmlHttpCheck.readyState == 4) {
	 			p_result.value = "can’t connect to server";
	  }
	}
}

function xmlhttpPost(strPrinterName, strSubmit) {
	var strURL = "http://127.0.0.1:8080/webdriver/"+ strPrinterName;
    var xmlHttpReq = false;
    
    // Chrome/Mozilla/Safari, IE7 or later
    if (window.XMLHttpRequest) {
            xmlHttpReq = new XMLHttpRequest();
    }
    // IE6 or older version
    else if (window.ActiveXObject) {
            xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
    }
    
    xmlHttpReq.open('POST', strURL, true);
    xmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xmlHttpReq.send(strSubmit);
    
    xmlHttpReq.onreadystatechange = function() {
			if (xmlHttpReq.readyState == 4 && xmlHttpReq.status == 200) {
        var res = JSON.parse(xmlHttpReq.responseText);
      	var reqId = res.RequestID;
      	var resId = res.ResponseID;
      	var ret = res.Result;
      	if(ret.search("ready") >= 0 || ret.search("progress") >= 0)	{
      		sleep(1000);
      		checkResult(strPrinterName, reqId, resId);
      	}
      	else if(ret.search("duplicated") >= 0) {
    			p_result.value = res.Result;
    		}
      }
      else if (xmlHttpReq.readyState == 4 && xmlHttpReq.status == 404) {
         	p_result.value = "No printers";
      }	
      else if(xmlHttpReq.readyState == 4) {
     			p_result.value = "can’t connect to server";
      }
    }
}

function PrintBarcode_inv1(data) {
	var barCodeData = data.barcodeValue;
	var data1 = data.wh_name;
	var data2 = data.zone_name;
	var data3 = $('#output').val();
	if (data3 <= 0) {
		data3 = 1;
	}
	var d = new Date();
	var today = d.getFullYear() + "." + (d.getMonth() + 1) + "." + d.getDate();

	var strSubmit = "{";
	strSubmit += "\"mode\":0,";
	strSubmit += "\"id\":" + issueID + ", "; //receipt id. 
	strSubmit += "\"functions\":{";
	strSubmit += "	\"func0\":{\"Connect\":[]},";
	strSubmit += "  \"func1\":{\"ClearBuffer\":[]      },";
	
	strSubmit += "  \"func2\":{\"PrintBlock\":[115, 160, 735, 164, 0, 0]},"; // 수평선 그리기
	strSubmit += "  \"func3\":{\"PrintBlock\":[340, 10, 344, 460, 0, 0]},"; // 수직선 그리기
	
	strSubmit += "  \"func4\":{\"PrintBlock\":[115, 310, 735, 314, 0, 0]},"; // 수평선 그리기
	strSubmit += "  \"func5\":{\"PrintBlock\":[115, 460, 735, 464, 0, 0]},"; // 수평선 그리기
	strSubmit += "  \"func6\":{\"PrintBlock\":[115, 10, 735, 640, 4, 4]},"; // 상자 그리기: 수평 인쇄 시작 위치(dot), 수직 인쇄 시작 위치(dot), 수평 인쇄 끝 위치(dot), 수직 인쇄 끝 위치(dot), 모양 옵션(0: 곂치는 부분 덮어쓰기  1: 겹치는 부분 인쇄 안함  2: 겹치는 부분 삭제  3: 사선  4: 사각형), 사선 또는 사각형의 두께 // 테두리
	
	strSubmit += "  \"func7\":{\"Print1DBarcode\":[125, 485, 1, 2, 1, 130, 0, 0, \">B" + barCodeData + "\"]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 바코드심볼(0:code39,1:code128), 좁은바 넓이(dot), 넓은바 넓이(dot), 바코드 높이(dot), 회전(0:0,1:90,2:180,3:270), 바코드 정보 인쇄여부(0:안함,1:바코드하단 크기1,2:바코드상단 크기1,3:바코드하단 크기2,4:바코드상단 크기2), 바코드 데이터값
	strSubmit += "  \"func8\":{\"PrintTrueFontLib\":[150, 60, \"Arial\", 36, 0, false, \"false\", false, \"창고명\", true]},";

	strSubmit += "  \"func9\":{\"PrintTrueFontLib\":[150, 210, \"Arial\", 36, 0, false, \"false\", false, \"구역명\", true]},";
	strSubmit += "  \"func10\":{\"PrintTrueFontLib\":[150, 360, \"Arial\", 36, 0, false, \"false\", false, \"출력일자\", true]},";
	strSubmit += "  \"func11\":{\"PrintTrueFontLib\":[400, 60, \"Arial\", 32, 0, false, \"false\", false, \"" + data1 + "\", true]},";
	
	strSubmit += "  \"func12\":{\"PrintTrueFontLib\":[400, 210, \"Arial\", 32, 0, false, \"false\", false, \"" + data2 + "\", true]},";
	strSubmit += "  \"func13\":{\"PrintTrueFontLib\":[400, 360, \"Arial\", 32, 0, false, \"false\", false, \"" + today + "\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270)
	
	strSubmit += "  \"func14\":{\"Prints\":[" + data3 + ", 1]},"; // 프린트 수  라벨 세트수, 라벨의 복사본 수 ({\"Prints\":[1, 1]} = 1장,{\"Prints\":[1, 2]} = 2장,{\"Prints\":[2, 1]} = 2장,{\"Prints\":[2, 2]} = 4장)
	strSubmit += "	\"func15\":{\"Disconnect\":[]}";
	strSubmit += "		}";
	strSubmit += "}";

	issueID++;
	return strSubmit;
}

function PrintBarcode_inv2(data) {
	var barCodeData = data.barcodeValue;
	var data1 = data.wh_name;
	var data2 = data.location;
	var data3 = $('#output').val();
	if (data3 <= 0) {
		data3 = 1;
	}
	var d = new Date();
	var today = d.getFullYear() + "." + (d.getMonth() + 1) + "." + d.getDate();

	var strSubmit = "{";
	strSubmit += "\"mode\":0,";
	strSubmit += "\"id\":" + issueID + ", "; //receipt id. 
	strSubmit += "\"functions\":{";
	strSubmit += "	\"func0\":{\"Connect\":[]},";
	strSubmit += "  \"func1\":{\"ClearBuffer\":[]      },";
	
	strSubmit += "  \"func2\":{\"PrintBlock\":[115, 160, 735, 164, 0, 0]},"; // 수평선 그리기
	strSubmit += "  \"func3\":{\"PrintBlock\":[340, 10, 344, 460, 0, 0]},"; // 수직선 그리기
	
	strSubmit += "  \"func4\":{\"PrintBlock\":[115, 310, 735, 314, 0, 0]},"; // 수평선 그리기
	strSubmit += "  \"func5\":{\"PrintBlock\":[115, 460, 735, 464, 0, 0]},"; // 수평선 그리기
	strSubmit += "  \"func6\":{\"PrintBlock\":[115, 10, 735, 640, 4, 4]},"; // 상자 그리기: 수평 인쇄 시작 위치(dot), 수직 인쇄 시작 위치(dot), 수평 인쇄 끝 위치(dot), 수직 인쇄 끝 위치(dot), 모양 옵션(0: 곂치는 부분 덮어쓰기  1: 겹치는 부분 인쇄 안함  2: 겹치는 부분 삭제  3: 사선  4: 사각형), 사선 또는 사각형의 두께 // 테두리
	
	strSubmit += "  \"func7\":{\"Print1DBarcode\":[125, 485, 1, 2, 1, 130, 0, 0, \">B" + barCodeData + "\"]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 바코드심볼(0:code39,1:code128), 좁은바 넓이(dot), 넓은바 넓이(dot), 바코드 높이(dot), 회전(0:0,1:90,2:180,3:270), 바코드 정보 인쇄여부(0:안함,1:바코드하단 크기1,2:바코드상단 크기1,3:바코드하단 크기2,4:바코드상단 크기2), 바코드 데이터값
	strSubmit += "  \"func8\":{\"PrintTrueFontLib\":[150, 60, \"Arial\", 36, 0, false, \"false\", false, \"창고명\", true]},";

	strSubmit += "  \"func9\":{\"PrintTrueFontLib\":[150, 210, \"Arial\", 36, 0, false, \"false\", false, \"위치\", true]},";
	strSubmit += "  \"func10\":{\"PrintTrueFontLib\":[150, 360, \"Arial\", 36, 0, false, \"false\", false, \"출력일자\", true]},";
	strSubmit += "  \"func11\":{\"PrintTrueFontLib\":[400, 60, \"Arial\", 32, 0, false, \"false\", false, \"" + data1 + "\", true]},";
	
	strSubmit += "  \"func12\":{\"PrintTrueFontLib\":[400, 210, \"Arial\", 32, 0, false, \"false\", false, \"" + data2 + "\", true]},";
	strSubmit += "  \"func13\":{\"PrintTrueFontLib\":[400, 360, \"Arial\", 32, 0, false, \"false\", false, \"" + today + "\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270)
	
	strSubmit += "  \"func14\":{\"Prints\":[" + data3 + ", 1]},"; // 프린트 수  라벨 세트수, 라벨의 복사본 수 ({\"Prints\":[1, 1]} = 1장,{\"Prints\":[1, 2]} = 2장,{\"Prints\":[2, 1]} = 2장,{\"Prints\":[2, 2]} = 4장)
	strSubmit += "	\"func15\":{\"Disconnect\":[]}";
	strSubmit += "		}";
	strSubmit += "}";

	issueID++;
	return strSubmit;
}

function PrintBarcode_pd1(data) {
	var barCodeData = data.barcodeValue;
	var data1 = data.p_name;
	var data2 = data.mt_number;
	var data3 = $('#output').val();
	if (data3 <= 0) {
		data3 = 1;
	}

	var strSubmit = "{";
	strSubmit += "\"mode\":0,";
	strSubmit += "\"id\":" + issueID + ", "; //receipt id. 
	strSubmit += "\"functions\":{";
	strSubmit += "	\"func0\":{\"Connect\":[]},";
	strSubmit += "  \"func1\":{\"ClearBuffer\":[]},";

	strSubmit += "  \"func5\":{\"Print1DBarcode\":[280, 45, 1, 1, 0, 100, 0, 0, \">B" + barCodeData + "\"]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 바코드심볼(0:code39,1:code128), 좁은바 넓이(dot), 넓은바 넓이(dot), 바코드 높이(dot), 회전(0:0,1:90,2:180,3:270), 바코드 정보 인쇄여부(0:안함,1:바코드하단 크기1,2:바코드상단 크기1,3:바코드하단 크기2,4:바코드상단 크기2), 바코드 데이터값 
	// 바코드

	strSubmit += "  \"func11\":{\"PrintTrueFontLib\":[280, 10, \"Arial\", 18, 0, false, \"false\", false, \"" + data1 + "\", true]},";
	strSubmit += "  \"func12\":{\"PrintTrueFontLib\":[280, 155, \"Arial\", 18, 0, false, \"false\", false, \"" + data2 + "\", true]},"; 
	// 제품번호, 제품명

	strSubmit += "  \"func29\":{\"Prints\":[" + data3 + ", 1]},"; // 프린트 수  라벨 세트수, 라벨의 복사본 수 ({\"Prints\":[1, 1]} = 1장,{\"Prints\":[1, 2]} = 2장,{\"Prints\":[2, 1]} = 2장,{\"Prints\":[2, 2]} = 4장)
	strSubmit += "	\"func30\":{\"Disconnect\":[]}";
	strSubmit += "		}";
	strSubmit += "}";

	issueID++;
	return strSubmit;
}

function PrintBarcode_pd2(data){
	var barCodeData = data.data.barcodeValue;
	var data1 = data.data.p_name;
	var data2 = data.data.mt_number;
	var data3 = $('#output').val();
	if(data3<=0){
		data3=1;
	}
	var data4 = data.trim.capacity;
	var data5 = data.trim.product_type;
	var data6 = data.trim.locality;
	var data7 = data.trim.row_material;
	var data8 = data.trim.packing;
	var data9 = data.trim.produce_num;
	var data10 = "st1_"+data.trim.stno;
	var data11 = data.data.image2;
	var data12 = data.trim.store_method1;
	var data13 = data.trim.exchange_place;
	var data15 = data.trim.cooking_method;
	var data16 = data.trim.expiration;
	var data17 = data.trim.store_method2;
	
	if(data.data.caution){
		var cautionArr = data.data.caution.split("|");;
		var data18,data19,data20,data21;
		cautionArr[0] ? data18 = cautionArr[0] : data18="";
		cautionArr[1] ? data19 = cautionArr[1] : data19="";
		cautionArr[2] ? data20 = cautionArr[2] : data20="";
		cautionArr[3] ? data21 = cautionArr[3] : data21="";
	}else{
		var data18 = "";
		var data19 = "";
		var data20 = "";
		var data21 = "";
	}

	
	var d = new Date();
	var today = d.getFullYear()+"."+(d.getMonth() + 1)+"."+d.getDate();
	var logo  = data.data.image_root + "sample_logo.png";
	var citation = data.data.image_root + "citation.jpg";
	var division = data.data.image_root + "division.jpg";
	var imageFile = data.data.sticker_root + data10+"."+data11;
	var strSubmit = "{";
	strSubmit += "\"mode\":0,";
	strSubmit += "\"id\":"+issueID+", "; //receipt id. 
	strSubmit += "\"functions\":{";
	strSubmit += "	\"func0\":{\"Connect\":[]},";
	strSubmit += "  \"func1\":{\"ClearBuffer\":[]      },";
	
	strSubmit += "  \"func2\":{\"PrintBlock\":[115, 15, 735, 640, 4, 4]},"; // 상자 그리기: 수평 인쇄 시작 위치(dot), 수직 인쇄 시작 위치(dot), 수평 인쇄 끝 위치(dot), 수직 인쇄 끝 위치(dot), 모양 옵션(0: 곂치는 부분 덮어쓰기  1: 겹치는 부분 인쇄 안함  2: 겹치는 부분 삭제  3: 사선  4: 사각형), 사선 또는 사각형의 두께 // 테두리
	//strSubmit += "  \"func3\":{\"PrintBlock\":[115, 128, 735, 444, 4, 2]},"; // 상자 그리기: 수평 인쇄 시작 위치(dot), 수직 인쇄 시작 위치(dot), 수평 인쇄 끝 위치(dot), 수직 인쇄 끝 위치(dot), 모양 옵션(0: 곂치는 부분 덮어쓰기  1: 겹치는 부분 인쇄 안함  2: 겹치는 부분 삭제  3: 사선  4: 사각형), 사선 또는 사각형의 두께 // 내부상자
	strSubmit += "  \"func4\":{\"PrintBlock\":[115, 160, 735, 162, 0, 0]},"; // 수평선 그리기 // 제품명 하단, 첫번째 수평선
	strSubmit += "  \"func5\":{\"PrintBlock\":[115, 212, 735, 214, 0, 0]},"; // 수평선 그리기 // 축산가공유형 하단, 두번째 수평선
	strSubmit += "  \"func6\":{\"PrintBlock\":[115, 260, 735, 262, 0, 0]},"; // 수평선 그리기 // 소재지 하단, 세번째 수평선
	strSubmit += "  \"func7\":{\"PrintBlock\":[115, 404, 735, 406, 0, 0]},"; // 수평선 그리기 // 원재료 하단, 네번째 수평선
	
	strSubmit += "  \"func8\":{\"PrintBlock\":[216, 128, 218, 262, 0, 0]},"; // 수직선 그리기 // 제품명 우측, 첫번째 수직선
	strSubmit += "  \"func9\":{\"PrintBlock\":[178, 262, 180, 444, 0, 0]},"; // 수직선 그리기 // 원재료 우측, 두번째 수직선
	strSubmit += "  \"func10\":{\"PrintBlock\":[546, 128, 548, 214, 0, 0]},"; // 수직선 그리기 // 내용량 좌측, 세번째 수직선
	strSubmit += "  \"func11\":{\"PrintBlock\":[634, 128, 636, 214, 0, 0]},"; // 수직선 그리기 // 내용량 우측, 네번째 수직선
	strSubmit += "  \"func12\":{\"PrintBlock\":[474, 404, 476, 444, 0, 0]},"; // 수직선 그리기 // 품목번호 좌측, 다섯번째 수직선
	strSubmit += "  \"func13\":{\"PrintBlock\":[578, 404, 580, 444, 0, 0]},"; // 수직선 그리기 // 품목번호 우측, 여섯번째 수직선

	strSubmit += "  \"func14\":{\"PrintTrueFontLib\":[108, 132, \"Verdana\", 14, 0, false, \"false\", false, \"제 품 명\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 제품명
	strSubmit += "  \"func15\":{\"PrintTrueFontLib\":[80, 174, \"Verdana\", 14, 0, false, \"false\", false, \"축산가공품 유형\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 축산가공유형
	strSubmit += "  \"func16\":{\"PrintTrueFontLib\":[80, 224, \"Verdana\", 14, 0, false, \"false\", false, \"업소명 및 소재지\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 업소명 및 소재지
	strSubmit += "  \"func17\":{\"PrintTrueFontLib\":[80, 304, \"Verdana\", 14, 0, false, \"false\", false, \"원재료명\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 원재료명
	strSubmit += "  \"func18\":{\"PrintTrueFontLib\":[88, 412, \"Verdana\", 14, 0, false, \"false\", false, \"포장재질\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 포장재질
	strSubmit += "  \"func19\":{\"PrintTrueFontLib\":[552, 132, \"Verdana\", 14, 0, false, \"false\", false, \"내 용 량\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 제품명
	strSubmit += "  \"func20\":{\"PrintTrueFontLib\":[552, 174, \"Verdana\", 14, 0, false, \"false\", false, \"유통기한\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 유통기한
	strSubmit += "  \"func21\":{\"PrintTrueFontLib\":[476, 412, \"Verdana\", 14, 0, false, \"false\", false, \"품목제조번호\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 품목제조번호
	//strSubmit += "  \"func22\":{\"PrintImageLibWithSize\":[120, 32, 138, 64, \""+logo+"\", 0, 1]},"; // 로고이미지
	//strSubmit += "  \"func23\":{\"PrintTrueFontLib\":[150, 100, \"Verdana\", 14, 0, false, \"false\", false, \"감코리아\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 감코리아
	//strSubmit += "  \"func24\":{\"PrintImageLibWithSize\":[224, 120, 416, 84, \""+imageFile+"\", 0, 1]},"; // 제품 스티커 이미지
	//strSubmit += "  \"func24\":{\"PrintImageLibWithSize\":[264, 32, 416, 84, \""+imageFile+"\", 0, 1]},"; // 제품 스티커 이미지
	
	strSubmit += "  \"func25\":{\"PrintTrueFontLib\":[220, 132, \"Verdana\", 14, 0, false, \"true\", false, \""+data1+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 제품명
	strSubmit += "  \"func26\":{\"PrintTrueFontLib\":[640, 132, \"Verdana\", 14, 0, false, \"false\", false, \""+data4+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 내용량
	var data5_1 = data5.substr(0,20);
	var data5_2 = data5.substr(20,20);
	strSubmit += "  \"func27\":{\"PrintTrueFontLib\":[220, 166, \"Verdana\", 14, 0, false, \"false\", false, \""+data5_1+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 축산가공유형
	strSubmit += "  \"func28\":{\"PrintTrueFontLib\":[220, 186, \"Verdana\", 14, 0, false, \"false\", false, \""+data5_2+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 축산가공유형
	strSubmit += "  \"func29\":{\"PrintTrueFontLib\":[220, 226, \"Verdana\", 14, 0, false, \"false\", false, \""+data6+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 업소명 소재지
	var data7_1 = data7.substr(0,40);
	var data7_2 = data7.substr(40,40);
	var data7_3 = data7.substr(80,40);
	var data7_4 = data7.substr(120,40);
	var data7_5 = data7.substr(160,40);
	var data7_6 = data7.substr(200,40);
	var data7_7 = data7.substr(240); 
	//alert(data7_2);
	strSubmit += "  \"func30\":{\"PrintTrueFontLib\":[184, 266, \"Verdana\", 14, 0, false, \"false\", false, \""+data7_1+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 원재료
	strSubmit += "  \"func31\":{\"PrintTrueFontLib\":[184, 286, \"Verdana\", 14, 0, false, \"false\", false, \""+data7_2+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 원재료
	strSubmit += "  \"func32\":{\"PrintTrueFontLib\":[184, 306, \"Verdana\", 14, 0, false, \"false\", false, \""+data7_3+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 원재료
	strSubmit += "  \"func33\":{\"PrintTrueFontLib\":[184, 326, \"Verdana\", 14, 0, false, \"false\", false, \""+data7_4+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 원재료
	strSubmit += "  \"func34\":{\"PrintTrueFontLib\":[184, 346, \"Verdana\", 14, 0, false, \"false\", false, \""+data7_5+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 원재료
	strSubmit += "  \"func35\":{\"PrintTrueFontLib\":[184, 366, \"Verdana\", 14, 0, false, \"false\", false, \""+data7_6+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 원재료
	strSubmit += "  \"func36\":{\"PrintTrueFontLib\":[184, 386, \"Verdana\", 14, 0, false, \"false\", false, \""+data7_7+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 원재료
	strSubmit += "  \"func37\":{\"PrintTrueFontLib\":[184, 412, \"Verdana\", 14, 0, false, \"false\", false, \""+data8+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 포장재질
	strSubmit += "  \"func38\":{\"PrintTrueFontLib\":[584, 412, \"Verdana\", 14, 0, false, \"false\", false, \""+data9+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 품목제조번호
	//alert(data12);
	strSubmit += "  \"func39\":{\"PrintTrueFontLib\":[84, 450, \"Verdana\", 14, 0, false, \"true\", false, \"·보관방법:"+data12+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 보관방법
	strSubmit += "  \"func40\":{\"PrintTrueFontLib\":[84, 548, \"Verdana\", 14, 0, false, \"false\", false, \"·반품 및 교환장소:"+data13+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 반품교환
	strSubmit += "  \"func41\":{\"PrintTrueFontLib\":[84, 568, \"Verdana\", 14, 0, false, \"true\", false, \"·주의사항 \", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 주의사항
	var data15_1 = data15.substr(0,20);
	var data15_2 = data15.substr(20,20);
	var data15_3 = data15.substr(40,20);
	var data15_4 = data15.substr(60,20);
	strSubmit += "  \"func42\":{\"PrintTrueFontLib\":[84, 664, \"Verdana\", 14, 0, false, \"false\", false, \"[조리방법] \", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 조리방법
	strSubmit += "  \"func43\":{\"PrintTrueFontLib\":[180, 664, \"Verdana\", 14, 0, false, \"false\", false, \""+data15_1+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 조리방법
	strSubmit += "  \"func44\":{\"PrintTrueFontLib\":[180, 684, \"Verdana\", 14, 0, false, \"false\", false, \""+data15_2+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 조리방법
	strSubmit += "  \"func45\":{\"PrintTrueFontLib\":[180, 704, \"Verdana\", 14, 0, false, \"false\", false, \""+data15_3+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 조리방법
	strSubmit += "  \"func46\":{\"PrintTrueFontLib\":[180, 724, \"Verdana\", 14, 0, false, \"false\", false, \""+data15_4+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 조리방법
	
	strSubmit += "  \"func47\":{\"PrintTrueFontLib\":[640, 176, \"Verdana\", 14, 0, false, \"false\", false, \""+data16+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 유통기한
	strSubmit += "  \"func48\":{\"PrintImageLibWithSize\":[640, 628, 80, 80, \""+citation+"\", 0, 1]},"; // 이미지
	strSubmit += "  \"func49\":{\"PrintImageLibWithSize\":[560, 628, 80, 80, \""+division+"\", 0, 1]},"; // 이미지
	strSubmit += "  \"func50\":{\"Print1DBarcode\":[480, 730, 1, 1, 1, 64, 0, 0, \">B"+barCodeData+"\"]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 바코드심볼(0:code39,1:code128), 좁은바 넓이(dot), 넓은바 넓이(dot), 바코드 높이(dot), 회전(0:0,1:90,2:180,3:270), 바코드 정보 인쇄여부(0:안함,1:바코드하단 크기1,2:바코드상단 크기1,3:바코드하단 크기2,4:바코드상단 크기2), 바코드 데이터값
	var data17_1 = data17.substr(0,45);
	var data17_2 = data17.substr(45,45);
	var data17_3 = data17.substr(90,45);
	var data17_4 = data17.substr(135,45);
	strSubmit += "  \"func51\":{\"PrintTrueFontLib\":[84, 470, \"Verdana\", 14, 0, false, \"false\", false, \""+data17_1+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 보관방법
	strSubmit += "  \"func52\":{\"PrintTrueFontLib\":[84, 490, \"Verdana\", 14, 0, false, \"false\", false, \""+data17_2+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 보관방법
	strSubmit += "  \"func53\":{\"PrintTrueFontLib\":[84, 510, \"Verdana\", 14, 0, false, \"false\", false, \""+data17_3+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 보관방법
	strSubmit += "  \"func54\":{\"PrintTrueFontLib\":[84, 530, \"Verdana\", 14, 0, false, \"false\", false, \""+data17_4+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 보관방법

	strSubmit += "  \"func55\":{\"PrintTrueFontLib\":[166, 568, \"Verdana\", 14, 0, false, \"false\", false, \""+data18+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 주의사항
	strSubmit += "  \"func56\":{\"PrintTrueFontLib\":[84, 588, \"Verdana\", 14, 0, false, \"false\", false, \""+data19+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 주의사항
	strSubmit += "  \"func57\":{\"PrintTrueFontLib\":[84, 608, \"Verdana\", 14, 0, false, \"false\", false, \""+data20+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 주의사항
	strSubmit += "  \"func58\":{\"PrintTrueFontLib\":[84, 628, \"Verdana\", 14, 0, false, \"false\", false, \""+data21+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 주의사항
	
	strSubmit += "  \"func69\":{\"Prints\":["+data3+", 1]},"; // 프린트 수  라벨 세트수, 라벨의 복사본 수 ({\"Prints\":[1, 1]} = 1장,{\"Prints\":[1, 2]} = 2장,{\"Prints\":[2, 1]} = 2장,{\"Prints\":[2, 2]} = 4장)
	strSubmit += "	\"func70\":{\"Disconnect\":[]}";
	strSubmit += "		}";
	strSubmit += "}";
		
	
	issueID++;
	return strSubmit;
}

function PrintBarcode_pd3(data){

	var barCodeData = data.data.barcodeValue; //바코드
	var data1 = data.data.p_name; //제품이름
	var data2 = $('#output').val(); //출력수
	if(data2<=0){
		data2=1;
	}
	var data3 = data.comp.address;
	var data4 = (data.comp.tel).split("-");
	var logo  = data.data.image_root + "sample_logo.png";
	
	var strSubmit = "{";
	strSubmit += "\"mode\":0,";
	strSubmit += "\"id\":"+issueID+", "; //receipt id. 
	strSubmit += "\"functions\":{";
	strSubmit += "	\"func0\":{\"Connect\":[]},";
	strSubmit += "  \"func1\":{\"ClearBuffer\":[]      },";
	strSubmit += "  \"func2\":{\"PrintBlock\":[115, 15, 735, 470, 4, 4]},"; // 상자 그리기: 수평 인쇄 시작 위치(dot), 수직 인쇄 시작 위치(dot), 수평 인쇄 끝 위치(dot), 수직 인쇄 끝 위치(dot), 모양 옵션(0: 곂치는 부분 덮어쓰기  1: 겹치는 부분 인쇄 안함  2: 겹치는 부분 삭제  3: 사선  4: 사각형), 사선 또는 사각형의 두께 // 테두리

	if(data1.length > 12){
		var c_data1 = data1.substr(12,data1.length-12);
		data1 = data1.substr(0,12);
		strSubmit += "  \"func3\":{\"PrintTrueFontLib\":[135, 56, \"Verdana\", 36, 0, false, \"false\", false, \"제품명 : "+data1+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 제품명
		strSubmit += "  \"func4\":{\"PrintTrueFontLib\":[310, 104, \"Verdana\", 36, 0, false, \"false\", false, \""+c_data1+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 제품명
	}else{
		strSubmit += "  \"func3\":{\"PrintTrueFontLib\":[135, 56, \"Verdana\", 36, 0, false, \"false\", false, \"제품명 : "+data1+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 제품명
	}
	strSubmit += "  \"func5\":{\"PrintTrueFontLib\":[135, 140, \"Verdana\", 22, 0, false, \"false\", false, \"※본 제품은 샘플용으로 판매를 하여서는 안됩니다.\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 축산가공유형
	strSubmit += "  \"func6\":{\"PrintImageLibWithSize\":[220, 150, 420, 200, \""+logo+"\", 0, 1]},"; // 로고이미지
	strSubmit += "  \"func7\":{\"PrintTrueFontLib\":[150, 334, \"Verdana\", 28, 0, false, \"false\", false, \""+data3+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 업소명 및 소재지
	strSubmit += "  \"func8\":{\"PrintTrueFontLib\":[132, 410, \"Verdana\", 20, 0, false, \"false\", false, \"TEL : "+data4[0]+")"+data4[1]+"-"+data4[2]+"\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270), 기울기, 두껍게, 밑줄 // 원재료명
	strSubmit += "  \"func9\":{\"Print1DBarcode\":[420, 394, 1, 1, 1, 64, 0, 0, \">B"+barCodeData+"\"]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 바코드심볼(0:code39,1:code128), 좁은바 넓이(dot), 넓은바 넓이(dot), 바코드 높이(dot), 회전(0:0,1:90,2:180,3:270), 바코드 정보 인쇄여부(0:안함,1:바코드하단 크기1,2:바코드상단 크기1,3:바코드하단 크기2,4:바코드상단 크기2), 바코드 데이터값
	
	strSubmit += "  \"func10\":{\"Prints\":["+data2+", 1]},"; // 프린트 수  라벨 세트수, 라벨의 복사본 수 ({\"Prints\":[1, 1]} = 1장,{\"Prints\":[1, 2]} = 2장,{\"Prints\":[2, 1]} = 2장,{\"Prints\":[2, 2]} = 4장)
	strSubmit += "	\"func11\":{\"Disconnect\":[]}";
	strSubmit += "		}";
	strSubmit += "}";
		
	
	issueID++;
	return strSubmit;
}

function PrintBarcode_ma(data) {
	var barCodeData = data.barcodeValue;
	var data1 = data.p_name;
	var data2 = data.mt_number;
	var data3 = $('#output').val();
	if (data3 <= 0) {
		data3 = 1;
	}

	var strSubmit = "{";
	strSubmit += "\"mode\":0,";
	strSubmit += "\"id\":" + issueID + ", "; //receipt id. 
	strSubmit += "\"functions\":{";
	strSubmit += "	\"func0\":{\"Connect\":[]},";
	strSubmit += "  \"func1\":{\"ClearBuffer\":[]},";

	strSubmit += "  \"func5\":{\"Print1DBarcode\":[280, 45, 1, 1, 0, 100, 0, 0, \">B" + barCodeData + "\"]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 바코드심볼(0:code39,1:code128), 좁은바 넓이(dot), 넓은바 넓이(dot), 바코드 높이(dot), 회전(0:0,1:90,2:180,3:270), 바코드 정보 인쇄여부(0:안함,1:바코드하단 크기1,2:바코드상단 크기1,3:바코드하단 크기2,4:바코드상단 크기2), 바코드 데이터값 
	// 바코드

	strSubmit += "  \"func11\":{\"PrintTrueFontLib\":[280, 10, \"Arial\", 18, 0, false, \"false\", false, \"" + data1 + "\", true]},";
	strSubmit += "  \"func12\":{\"PrintTrueFontLib\":[280, 155, \"Arial\", 18, 0, false, \"false\", false, \"" + data2 + "\", true]},"; 
	// 제품번호, 제품명

	strSubmit += "  \"func29\":{\"Prints\":[" + data3 + ", 1]},"; // 프린트 수  라벨 세트수, 라벨의 복사본 수 ({\"Prints\":[1, 1]} = 1장,{\"Prints\":[1, 2]} = 2장,{\"Prints\":[2, 1]} = 2장,{\"Prints\":[2, 2]} = 4장)
	strSubmit += "	\"func30\":{\"Disconnect\":[]}";
	strSubmit += "		}";
	strSubmit += "}";

	issueID++;
	return strSubmit;
}

function PrintBarcode_req(data) {
	var barCodeData = data.barcodeValue;
	var inoutArr = {"1":["수기입고","생산입고","발주입고"],"2":["수기출고","생산출고","출하출고"]};
	var index=0;
	data.po_code ? index=1 : data.ph_code || data.sh_code ? index=2 : false;
	var data1 = data.request_number;
	var data2 = inoutArr[data.in_out][index];
	var data3 = data.reg_date;
	var data4 = $('#output').val();
	
	if (data3 <= 0) {
		data3 = 1;
	}

	var strSubmit = "{";
	strSubmit += "\"mode\":0,";
	strSubmit += "\"id\":" + issueID + ", "; //receipt id. 
	strSubmit += "\"functions\":{";
	strSubmit += "	\"func0\":{\"Connect\":[]},";
	strSubmit += "  \"func1\":{\"ClearBuffer\":[]      },";
	strSubmit += "  \"func2\":{\"PrintBlock\":[115, 160, 735, 164, 0, 0]},"; // 수평선 그리기
	strSubmit += "  \"func3\":{\"PrintBlock\":[340, 10, 344, 460, 0, 0]},"; // 수직선 그리기
	
	strSubmit += "  \"func4\":{\"PrintBlock\":[115, 310, 735, 314, 0, 0]},"; // 수평선 그리기
	strSubmit += "  \"func5\":{\"PrintBlock\":[115, 460, 735, 464, 0, 0]},"; // 수평선 그리기
	strSubmit += "  \"func6\":{\"PrintBlock\":[115, 10, 735, 640, 4, 4]},"; // 상자 그리기: 수평 인쇄 시작 위치(dot), 수직 인쇄 시작 위치(dot), 수평 인쇄 끝 위치(dot), 수직 인쇄 끝 위치(dot), 모양 옵션(0: 곂치는 부분 덮어쓰기  1: 겹치는 부분 인쇄 안함  2: 겹치는 부분 삭제  3: 사선  4: 사각형), 사선 또는 사각형의 두께 // 테두리
	
	strSubmit += "  \"func7\":{\"Print1DBarcode\":[125, 485, 1, 2, 1, 130, 0, 0, \">B" + barCodeData + "\"]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 바코드심볼(0:code39,1:code128), 좁은바 넓이(dot), 넓은바 넓이(dot), 바코드 높이(dot), 회전(0:0,1:90,2:180,3:270), 바코드 정보 인쇄여부(0:안함,1:바코드하단 크기1,2:바코드상단 크기1,3:바코드하단 크기2,4:바코드상단 크기2), 바코드 데이터값
	strSubmit += "  \"func8\":{\"PrintTrueFontLib\":[150, 60, \"Arial\", 36, 0, false, \"false\", false, \"요청번호\", true]},";

	strSubmit += "  \"func9\":{\"PrintTrueFontLib\":[150, 210, \"Arial\", 36, 0, false, \"false\", false, \"요청정보\", true]},";
	strSubmit += "  \"func10\":{\"PrintTrueFontLib\":[150, 360, \"Arial\", 36, 0, false, \"false\", false, \"요청일자\", true]},";
	strSubmit += "  \"func11\":{\"PrintTrueFontLib\":[400, 60, \"Arial\", 32, 0, false, \"false\", false, \"" + data1 + "\", true]},";
	
	strSubmit += "  \"func12\":{\"PrintTrueFontLib\":[400, 210, \"Arial\", 32, 0, false, \"false\", false, \"" + data2 + "\", true]},";
	strSubmit += "  \"func13\":{\"PrintTrueFontLib\":[400, 360, \"Arial\", 32, 0, false, \"false\", false, \"" + data3 + "\", true]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 글꼴, 글자크기, 회전(0:0,1:90,2:180,3:270)
	
	strSubmit += "  \"func14\":{\"Prints\":[" + data4 + ", 1]},"; // 프린트 수  라벨 세트수, 라벨의 복사본 수 ({\"Prints\":[1, 1]} = 1장,{\"Prints\":[1, 2]} = 2장,{\"Prints\":[2, 1]} = 2장,{\"Prints\":[2, 2]} = 4장)
	strSubmit += "	\"func15\":{\"Disconnect\":[]}";
	strSubmit += "		}";
	strSubmit += "}";

	issueID++;
	return strSubmit;
}

function PrintBarcodeQty(data){
	var pd_count = data.pd_count;
	var box_qty = data.box_qty;
	var output = data.output;
	var quotient = parseInt(pd_count/box_qty);
	var modulus = pd_count%box_qty;
	var result;
	
	if(output==1){
		result = PrintBarcode_box(data,output,output,pd_count);
	}else{
		for(var i=1;i<output;i++){
			result = PrintBarcode_box(data,i,output,box_qty);
		}
		if(modulus!=0){
			result = PrintBarcode_box(data,i,output,modulus);
		}else{
			result = PrintBarcode_box(data,i,output,box_qty);
		}
	}
	
	return result;
}

function PrintBarcode_box(data,cnt,max_cnt,qty){
	var barCodeData = data.mt_number+"_"+qty;
	if(barCodeData.length<24){
		barCodeData = barCodeData+"_00000000000000000000000";
		barCodeData = barCodeData.substr(0,24);
	}
	var data1 = data.mt_number;
	var data2 = data.p_name;
	var data3 = data.expiration_date;
	var data4 = qty;
	var data5 = data.sacks_unit;
	var data6 = data.image;
	var imageFile = data.image_root + data6;
	var data7 = "("+cnt+"/"+max_cnt+")";
	var data8 = "";
	var data9 = (parseFloat(data5)*data.box_quantity).toFixed(2)+" KG";
	
	var partner = data.c_name;

	
	
	var strSubmit = "{";
	strSubmit += "\"mode\":0,";
	strSubmit += "\"id\":"+issueID+", "; //receipt id. 
	strSubmit += "\"functions\":{";
	strSubmit += "	\"func0\":{\"Connect\":[]},";
	strSubmit += "  \"func1\":{\"ClearBuffer\":[]      },";
	strSubmit += "  \"func2\":{\"PrintBlock\":[135, 425, 715, 495, 4, 4]},"; // 상자 그리기: 수평 인쇄 시작 위치(dot), 수직 인쇄 시작 위치(dot), 수평 인쇄 끝 위치(dot), 수직 인쇄 끝 위치(dot), 모양 옵션(0: 곂치는 부분 덮어쓰기  1: 겹치는 부분 인쇄 안함  2: 겹치는 부분 삭제  3: 사선  4: 사각형), 사선 또는 사각형의 두께 // 수량 상자
	strSubmit += "  \"func3\":{\"PrintBlock\":[485, 90, 715, 390, 4, 4]},"; // 상자 그리기: 수평 인쇄 시작 위치(dot), 수직 인쇄 시작 위치(dot), 수평 인쇄 끝 위치(dot), 수직 인쇄 끝 위치(dot), 모양 옵션(0: 곂치는 부분 덮어쓰기  1: 겹치는 부분 인쇄 안함  2: 겹치는 부분 삭제  3: 사선  4: 사각형), 사선 또는 사각형의 두께 // 이미지 상자
	strSubmit += "  \"func4\":{\"Print1DBarcode\":[125, 510, 1, 2, 0, 115, 0, 0, \">B"+barCodeData+"\"]},"; // 수평 인쇄 위치(dot), 수직 인쇄 위치(dot), 바코드심볼(0:code39,1:code128), 좁은바 넓이(dot), 넓은바 넓이(dot), 바코드 높이(dot), 회전(0:0,1:90,2:180,3:270), 바코드 정보 인쇄여부(0:안함,1:바코드하단 크기1,2:바코드상단 크기1,3:바코드하단 크기2,4:바코드상단 크기2), 바코드 데이터값
	strSubmit += "  \"func5\":{\"PrintBlock\":[115, 5, 735, 645, 4, 4]},"; // 상자 그리기: 수평 인쇄 시작 위치(dot), 수직 인쇄 시작 위치(dot), 수평 인쇄 끝 위치(dot), 수직 인쇄 끝 위치(dot), 모양 옵션(0: 곂치는 부분 덮어쓰기  1: 겹치는 부분 인쇄 안함  2: 겹치는 부분 삭제  3: 사선  4: 사각형), 사선 또는 사각형의 두께 // 테두리
	if(String(data2).length>18){
		var data2_1 = data2.substr(0,18);
		var data2_2 = data2.substr(18);
		strSubmit += "  \"func6\":{\"PrintTrueFontLib\":[135, 20, \"Arial\", 24, 0, false, \"false\", false, \"제품명 : "+data2_1+"\", true]},"; // 품명
		strSubmit += "  \"func7\":{\"PrintTrueFontLib\":[135, 50, \"Arial\", 24, 0, false, \"false\", false, \""+data2_2+"\", true]},"; // 품명
	}else{
		strSubmit += "  \"func6\":{\"PrintTrueFontLib\":[135, 20, \"Arial\", 24, 0, false, \"false\", false, \"제품명 : "+data2+"\", true]},"; // 품명
	}
	if(String(data1).length>12){
		var data1_1 = data1.substr(0,12);
		var data1_2 = data1.substr(12);
		strSubmit += "  \"func8\":{\"PrintTrueFontLib\":[135, 100, \"Arial\", 24, 0, false, \"false\", false, \"제품번호 : "+data1_1+"\", true]},"; // 품번
		strSubmit += "  \"func9\":{\"PrintTrueFontLib\":[215, 130, \"Arial\", 24, 0, false, \"false\", false, \""+data1_2+"\", true]},"; // 품번
	}else{
		strSubmit += "  \"func8\":{\"PrintTrueFontLib\":[135, 100, \"Arial\", 24, 0, false, \"false\", false, \"제품번호 : "+data1+"\", true]},"; // 품번
	}
	if(String(data9).length>10){
		var data9_1 = data9.substr(0,10);
		var data9_2 = data9.substr(10);
		strSubmit += "  \"func12\":{\"PrintTrueFontLib\":[135, 180, \"Arial\", 24, 0, false, \"false\", false, \"중량 : "+data9_1+"\", true]},"; // 무게
		strSubmit += "  \"func13\":{\"PrintTrueFontLib\":[215, 210, \"Arial\", 24, 0, false, \"false\", false, \""+data9_2+"\", true]},"; // 중량
	}else{
		strSubmit += "  \"func12\":{\"PrintTrueFontLib\":[135, 180, \"Arial\", 24, 0, false, \"false\", false, \"중량 : "+data9+"\", true]},"; // 무게
	}
	strSubmit += "  \"func14\":{\"PrintTrueFontLib\":[135, 260, \"Arial\", 24, 0, false, \"false\", false, \"유통기한 : "+data3+"\", true]},"; // 유통기한
	strSubmit += "  \"func15\":{\"PrintTrueFontLib\":[155, 435, \"Arial\", 30, 0, false, \"false\", false, \"수량 : "+data4+" EA\", true]},";// 수량
	strSubmit += "  \"func16\":{\"PrintTrueFontLib\":[485, 435, \"Arial\", 30, 0, false, \"false\", false, \""+data7+"\", true]},"; // 순번/인쇄수
	if(data6){
		strSubmit += "  \"func17\":{\"PrintImageLibWithSize\":[485, 90, 230, 300, \""+imageFile+"\", 0, 1]},"; // 이미지
	}
	strSubmit += "  \"func18\":{\"PrintTrueFontLib\":[135, 340, \"Arial\", 24, 0, false, \"false\", false, \"협력업체 : "+partner+"\", true]},"; // 협력업체
	strSubmit += "  \"func19\":{\"Prints\":[1, 1]},"; // 프린트 수  라벨 세트수, 라벨의 복사본 수 ({\"Prints\":[1, 1]} = 1장,{\"Prints\":[1, 2]} = 2장,{\"Prints\":[2, 1]} = 2장,{\"Prints\":[2, 2]} = 4장)
	strSubmit += "	\"func20\":{\"Disconnect\":[]}";
	strSubmit += "		}";
	strSubmit += "}";
	
	issueID++;
	return strSubmit;
}