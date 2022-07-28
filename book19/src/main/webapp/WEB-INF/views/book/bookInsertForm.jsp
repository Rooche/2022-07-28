<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
	<h3>도서 등록</h3>
	<form action="bookInsert" method="post" onsubmit="return bookCheck()">
		<table border="1">
			<thead>
				<tr>
					<th>도서번호</th>
					<td><input type="text" id="bookNo" name="bookNo" value="${bno}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>도서명</th>
					<td><input type="text" id="bookName" name="bookName"></td>
				</tr>
				<tr>
					<th>도서표지</th>
					<td><input type="text" id="bookCoverimg" name="bookCoverimg"></td>
				</tr>
				<tr>
					<th>출판일자</th>
					<td><input type="date" id="bookDate" name="bookDate"></td>
				</tr>
				<tr>
					<th>금액</th>
					<td><input type="number" id="bookPrice" name="bookPrice"></td>
				</tr>
				<tr>
					<th>출판사</th>
					<td><input type="text" id="bookPublisher" name="bookPublisher"></td>
				</tr>
				<tr>
					<th>도서소개</th>
					<td><textarea name="bookInfo" ></textarea></td>
				</tr>
			</thead>
		</table>
		<button type="submit">등록</button>
		<button type="button" onclick="boardSelectList()">목록</button>
	</form>
	<script type="text/javascript">
		function bookCheck(){
			if($("#bookName").val() == '' || $("#bookName").val() == null){
				alert("도서명이 입력되지 않았습니다.");
				$("#bookName").focus();
				
				return false;
			}
		}
		
		function boardSelectList(){
			location.href="bookSelectList";
		}
	</script>
</body>
</html>