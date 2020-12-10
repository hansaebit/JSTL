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
<c:set var="name" value="강호동"/>
<c:set var="age" value="23"/>

<c:if test="${age>=20}">
	<b style="color:blue">
		${name }님은 성인입니다.
	</b>
</c:if>

<c:if test="${age<20}">
	<b style="color:red">
		${name }님은 미성년자입니다.
	</b>
</c:if>
</body>
</html>