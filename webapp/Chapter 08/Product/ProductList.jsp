<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- JSTL 태그 라이브러리 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<h2>상품 목록</h2>
	<hr>
	<table border="1">
	<!--  <tr>내용</tr>: 표의 제목
		  <th>내용</th>: 가로줄 생성
		  <td>내용</td>: 셀 생성 -->
	<tr> <th>번호</th> <th>상품명</th> <th>가격</th></tr>
	<c:forEach var="p" varStatus="i" items="${products}">
		<tr>
			<td>${i.count}</td>
			<td><a href="/jwbook/pcontrol?action=info&id=${p.id}">${p.name}</a></td>
			<td>${p.price}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>
