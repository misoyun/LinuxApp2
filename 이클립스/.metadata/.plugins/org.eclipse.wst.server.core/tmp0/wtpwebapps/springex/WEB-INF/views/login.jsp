<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"63587",secure:"63592"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-2" data-genuitec-path="/springex/webapp/WEB-INF/views/login.jsp">

	<h1 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-2" data-genuitec-path="/springex/webapp/WEB-INF/views/login.jsp">가입화면</h1>		<!-- 현재 경로 설정 -->
	<form action ="${pageContext.servletContext.contextPath}/user/login" method= "post"> <!-- user라는 requestMapping에 있는 login 찾음 -->  
		아이디: <input type= "text" name = "id"><br>
		패스워드: <input type= "password" name= "pw"><br>
		<input type ="submit" value = "로그인"><br>	
	</form>	

</body>
</html>