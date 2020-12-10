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

<table>
	<caption><b>구구단</b></caption>
	<tr bgcolor="pink">
		<c:forEach var="dan" begin="2" end="9">
			<th width="100">${dan}</th>
		</c:forEach>
	</tr>
	<c:forEach var="a" begin="1" end="9" varStatus="1">
		<tr>
			<c:forEach var="b" begin="2" end="9" varStatus="1">
				<td align="center">
					${b}*${a}=${a*b}
				</td>
			</c:forEach>
		</tr>
	</c:forEach>
</table>

</body>
</html>