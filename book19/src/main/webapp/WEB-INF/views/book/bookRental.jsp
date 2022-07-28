<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대여확인</title>
</head>
<body>
	<h3>도서별 대여매출현황</h3>
	<table border="1">
		<thead>
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>대여총계</th>
				<th>대여횟수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="vo">
				<tr>
					<td>${vo.bookNo}</td>
					<td>${vo.bookName}</td>
					<td>${vo.rentPrice}</td>
					<td>${vo.rentalCount}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>