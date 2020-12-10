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
	table,tr,td,th{
		border:1px solid gray;
		font-size:15px;
	}
</style>
</head>
<body>
<c:set var="su1" value="7"/>
<c:set var="su2" value="4"/>
su1=${su1},su2=${su2}
<table>
	<caption>JSTL 연산자 공부</caption> <!-- 증감연산자가 없다. (사용할 경우 set으로 변수 다시 선언해야 함.) -->
	<thead>
		<tr>
			<th width="200">
				연산자식
			</th>
			<th width="200">
				결과값
			</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>\${su1+su2}</td>
			<td>${su1+su2}</td>
		</tr>
		
		<tr>
			<td>\${su1-su2}</td>
			<td>${su1-su2}</td>
		</tr>
		
		<tr>
			<td>\${su1*su2}</td>
			<td>${su1*su2}</td>
		</tr>
		
		<tr>
			<td>\${su1/su2}</td>
			<td>${su1/su2}</td>
		</tr>
		
		<tr>
			<td>\${su1%su2}</td>
			<td>${su1%su2}</td>
		</tr>
		
		<tr>
			<td>\${su1 div su2}</td>
			<td>${su1 div su2}</td>
		</tr>
		
		<tr>
			<td>\${su1 mod su2}</td>
			<td>${su1 mod su2}</td>
		</tr>
		
		<tr>
			<td>\${su1==su2 && su1>=5 }</td>
			<td>${su1==su2 && su1>=5 }</td>
		</tr>
		
		<tr>
			<td>\${su1 eq su2 and su1 ge 5 }</td>
			<td>${su1 eq su2 and su1 ge 5 }</td>
		</tr>
		
		<tr>
			<td>su1을 1 증가</td>
			<td><c:set var="su1" value="${su1+1}"/>${su1}</td> 
		</tr>
		
		<tr>
			<td>su2를 1 감소</td>
			<td><c:set var="su2" value="${su2-1}"/>${su2}</td>
		</tr>
		
	</tbody>
</table>
</body>
</html>