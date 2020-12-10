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
<!-- JSTL Encoding -->
<fmt:requestEncoding value="utf-8"/>

<form action="ex4_jstltest.jsp" method="post">
	이름 : <input type="text" name="name" value="${param.name}"><br>
	나이 : <input type="text" name="age"><br>
	<h2>여행가고 싶은 나라를 선택하세요.</h2>
	<select name="nara">
		<option value="미국">미국</option>
		<option value="프랑스">프랑스</option>
		<option value="프라하">프라하</option>
		<option value="스위스">스위스</option>
	</select>
	<button type="submit">전송</button>
</form>
<!-- 이름에 값이 있을 경우에만 출력 -->
<c:if test="${!empty param.name}">
	<h1>입력한 값들 읽기</h1>
	<h2>
		이름 : ${param.name}<br>
		나이 : ${param.age}<br>
		여행가고 싶은 나라는 ${param.nara} 입니다.<br>
	</h2>
	
	<!-- 여러개의 조건을 주고싶을 경우 choose문 사용. -->
	<h2>
	<c:choose>
		<c:when test="${param.nara=='미국'}">
			<b style="color:maroon;">미국은 아름다운 나라입니다. </b>
		</c:when>
		<c:when test="${param.nara=='프랑스'}">
			<b style="color:green;">프랑스는 아름다운 나라입니다. </b>
		</c:when>
		<c:when test="${param.nara=='프라하'}">
			<b style="color:red;">프라하는 아름다운 나라입니다. </b>
		</c:when>
		<c:otherwise> <!-- 나머지 모두!! -->
			<b style="color:gray;">${param.nara}이곳은 가본적이 없어요!!!</b>
		</c:otherwise>
	</c:choose>
	</h2>
	
	<h2>
	<!-- 나이가 10대일 경우 '10대에는 열심히 공부해야죠', 20대 : '자바공부 열심히 합시다.', 30대:'직장일은 재미있나요?' 나머지 연령대는 모두 '현재 나이가 어떻게 된다구요?? -->
	<c:set var="age" value="${param.age}"/>
	<c:choose>
		<c:when test="${10<=param.age && param.age<=19}">
			10대에는 열심히 공부해야죠.
		</c:when>
		<c:when test="${20<=age && age<=29}">
			자바공부 열심히 합시다.
		</c:when>
		<c:when test="${30<=age && age<=39}">
			직장일은 재미있나요?
		</c:when>
		<c:otherwise>
			현재 나이가 어떻게 된다구요??
		</c:otherwise>
	</c:choose>
	</h2>
</c:if>
</body>
</html>