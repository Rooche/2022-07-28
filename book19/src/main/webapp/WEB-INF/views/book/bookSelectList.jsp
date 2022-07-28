<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 조회</title>
</head>
<body>
	<div class="mt-3">
		<p class="h3">도서 조회/수정</p>
	</div>
	<table border="1">
		<thead>
			<tr>
					<th>도서번호</th>
					<th>도서명</th>
					<th>표지</th>
					<th>출판일자</th>
					<th>금액</th>
					<th>출판사</th>
					<th>도서소개</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="vo">
				<tr>
					<td>${vo.bookNo}</td>
					<td>${vo.bookName}</td>
					<td><img alt="" src="resources/images/${vo.bookCoverimg}" style="width: 50px;height: 50px;"></td>
					<td>${vo.bookDate}</td>
					<td>${vo.bookPrice}</td>
					<td>${vo.bookPublisher}</td>
					<td>${vo.bookInfo}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>