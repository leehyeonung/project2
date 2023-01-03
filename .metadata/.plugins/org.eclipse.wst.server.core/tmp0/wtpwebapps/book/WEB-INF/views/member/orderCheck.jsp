<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${ses.mem_id}님 주문/배송조회 화면입니다.

<table border="1">
			<tr>
				<th>주문번호</th>
				<th>주문자</th>
				<th>주문상태</th>
				<th>#</th>
				<th>#</th>
			</tr>
			<c:forEach items="${list}" var="order">
				<tr>
					<td>${order.order_num}</td>				
					<td>${order.order_mem_num}</td>				
					<td>${order.order_sta}</td>				
					<td>#</td>
					<td>#</td>
				</tr>
			</c:forEach>
			<div>
			<c:if test="${pgh.prev}">
			<a href="/mem/check?pageNo=${pgh.startPage-1}&qty=${pgh.pgvo.qty}">prev</a>
			</c:if>
			<c:forEach begin="${pgh.startPage }" end="${pgh.endPage }" var="i">
				<a href="/mem/check?pageNo=${i}&qty=${pgh.pgvo.qty}">${i} ｜ </a>
			</c:forEach>
			<c:if test="${pgh.next}">
			<a href="/mem/check?pageNo=${pgh.endPage+1}&qty=${pgh.pgvo.qty}">next</a>
			</c:if>
			</div>
	</table>


</body>
</html>