<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- JSTL에서 변수선언하는 방법 -->
<c:set var="name" value="한지민"/>
<c:set var="age" value="23"/>
<c:set var="today" value="<%=new Date() %>"/>

<!-- jstl 변수 출력하는 방법1 -->
<h2>이름 : <c:out value="${name}"/></h2>

<!-- jstl 변수 출력하는 방법2 -->
<h2>이름 : ${name}</h2>
<h2>나이 : ${age}</h2>
<h2>오늘 날짜 : ${today}</h2>

<!-- pattern을 이용한 fmt 날짜형식 -->
<pre>
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd HH:mm"/>
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd a hh:mm"/> <!-- h는 24시간 / a는 오전오후 -->
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd HH:mm EEE"/> <!-- E는 요일(목) -->
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd HH:mm EEEE"/> <!-- 목요일 -->
	
	
</pre>


<c:set var="money" value="6789000"/>
<c:set var="num1" value="123.456789"/>

<!-- JSTL 에서의 숫자출력양식 -->
<pre>
	<fmt:formatNumber value="${money }" type="currency" /> <!-- type="currency"는 화폐단위. -->
	<fmt:formatNumber value="${money }" type="number"/>원 <!-- number은 컴마만 찍힘. -->
	
	<!-- pattern 사용하기!! -->
	<fmt:formatNumber value="${num1 }" pattern="0.00"/> <!-- 00이면 값이 없어도 0이 나오고, #은 값이 없으면 0이면 안나옴. -->
	<fmt:formatNumber value="1.2" pattern="0.00"/>
	<fmt:formatNumber value="1.2" pattern="0.##"/>
	
	
</pre>


</body>
</html>