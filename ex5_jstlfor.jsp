<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table,tr,td,th{border:1px solid gray;}
</style>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
<h2>JSTL의 for문</h2>
<c:forEach var="n" begin="1" end="10">
	${n}&nbsp;
</c:forEach>
<br>
<c:forEach var="n" begin="1" end="30" step="5"> <!-- var(변수) begin(시작) end(끝) step(증감) -->
	${n}&nbsp;
</c:forEach>
<br>
<%
	//자바영역에서 배열값을 준 후 JSTL 변수로 전환해보자.
	String[] colors={"red", "green","blue","megenta","gray"};
%>
<c:set var="colors" value="<%=colors%>"/>
<h2>출력1 - 전체출력</h2>
<table>
	<tr>
		<td width="70">index</td>
		<td width="70">count</td>
		<td width="70">colors</td>
		<td width="70">fill</td>
	</tr>
	<c:forEach var="a" items="${colors}" varStatus="i">
		<tr>
			<td>${i.index}</td> <!-- 실제 index값. -->
			<td>${i.count}</td> <!-- 그냥 카운트... 1부터 시작. -->
			<td>${a}</td>
			<td style="background-color:${a}"></td>
		</tr>
	</c:forEach>
</table>
<br><br>
<h2>출력2 - index 0부터 2</h2>
<table>
	<tr>
		<td width="70">index</td>
		<td width="70">count</td>
		<td width="70">colors</td>
		<td width="70">fill</td>
	</tr>
	<c:forEach var="a" items="${colors}" begin="0" end="2" varStatus="i">
		<tr>
			<td>${i.index}</td> <!-- 실제 index값. -->
			<td>${i.count}</td> <!-- 그냥 카운트 1부터 시작. -->
			<td>${a}</td>
			<td style="background-color:${a}"></td>
		</tr>
	</c:forEach>
</table>
<br><br>
<h2>출력3 - index 3부터 4</h2>
<table>
	<tr>
		<td width="70">index</td>
		<td width="70">count</td>
		<td width="70">colors</td>
		<td width="70">fill</td>
	</tr>
	<c:forEach var="a" items="${colors}" begin="3" end="4" varStatus="i">
		<tr>
			<td>${i.index}</td> <!-- 실제 index값. -->
			<td>${i.count}</td> <!-- 그냥 카운트 1부터 시작. -->
			<td>${a}</td>
			<td style="background-color:${a}"></td>
		</tr>
	</c:forEach>
</table>
<br><br>

</body>
</html>