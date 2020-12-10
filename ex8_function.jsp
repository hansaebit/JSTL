<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- 기본 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- format -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <!-- function -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>JSTL의 문자 함수들 공부하기</h1>
<c:set var="msg1" value="  Have a Nice Day!!  "/>
<h3>msg1 문자열 출력과 길이 구하기</h3>
msg1 :  [${msg1}]<br>
length : ${fn:length(msg1)}글자입니다.<br>


<h3>msg1에서 양쪽의 공백제거 후 출력과 길이 구하기</h3>
<c:set var="msg2" value="${fn:trim(msg1)}"/>  <!-- trim은 앞,뒤 공백제거! -->
msg2 : [${msg2}]<br>
length : ${fn:length(msg2)}글자입니다.<br>

<h3>msg2를 대문자와 소문자로 변경후 출력</h3>
${fn:toUpperCase(msg2)}<br>
${fn:toLowerCase(msg2)}<br>

<h3>특정 문자열로 시작할 경우 true</h3>
${fn:startsWith(msg2,"Have")}<br>
${fn:startsWith(msg2,"have")}<br>

<h3>특정 문자열로 끝날 경우 true</h3>
${fn:endsWith(msg2,"!!")}<br>
${fn:endsWith(msg2,"%%")}<br>

<h3>contains : 특정 문자열을 포함하고 있으면 true</h3>
${fn:contains(msg2,"Day")}<br>
${fn:contains(msg2,"Happy")}<br>

<h3>replace : 문자열 A를 B로 교체</h3>
${fn:replace(msg2,"a","*")}<br>

<h3>subString : 문자열 추출</h3>
${fn:substring(msg2,7,11)}<br> <!-- 7부터 10까지 추출(end는 항상 +1) -->
</body>
</html>