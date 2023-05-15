<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지게시판 입력폼</title>
</head>
<body>
	<jsp:include page="../navigator.jsp"></jsp:include>
		<form action="notice_Insert.notice" method="post">
			<h1>공지 게시글 입력</h1>
			<label for="subject">제목</label>
			<input type="text" id="subject" name="notice_subject" required="required">
			<label for="title">내용</label>
			<textarea rows="10" cols="2" id="content" name="notice_content" required="required"></textarea>
			<div>
			<button type="submit">작성</button>
			<input type="button" id="cancel" onClick="history.go(-1)" value="취소">
			</div>
		</form>
		<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>