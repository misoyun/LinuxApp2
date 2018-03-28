<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"63587",secure:"63592"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-7" data-genuitec-path="/mvc_board/WebContent/board/checksuccess.jsp">
	<script type="text/javascript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-7" data-genuitec-path="/mvc_board/WebContent/board/checksuccess.jsp">
	if( window.name == "update" )
		 window.opener.parent.location.href = "BoardServlet?command=board_update_form&no=${param.no}";
	else if( window.name =="delete")
	{
		alert("삭제 완료"); 
		window.opener.parent.location.href = "BoardServlet?command=borad_delete&no=${param.no}";
	}
	window.close();
	
	</script>
</body>
</html>