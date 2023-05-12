<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>회원가입 페이지</title>	
	
    <!-- studystyle.css -->
<link rel="stylesheet" type="text/css" href="./css/login/signupstyle.css">
</head>
<body>

<!------------------------------ 전체 프레임 ------------------------------>
	<div id="frame">
	
	<!-- 네비게이션 바/부트스트랩 -->
		<jsp:include page="../navigator.jsp"></jsp:include>

	<form action="insertMember" method="post">
		<h1>회원가입</h1>
		
		<label for="email">이메일</label>
		<input type="email" id="id" name="id" required>
		<input type="button" id="emailCheck" value="중복검사">

		<label for="nickname">닉네임</label>
		<input type="text" id="nickname" name="nick" required>
		<input type="button" id="nicknameCheck" value="중복검사">

		<label for="password">비밀번호</label>
		<input type="password" id="passwd" name="passwd" required>

		<input type="submit" value="회원가입">
	</form>
	<script>
		// 이메일 중복검사 버튼에 이벤트 리스너 추가
		document.getElementById("emailCheck").addEventListener("click", function() {
			// 이메일 중복검사 로직 추가
			alert("이메일 중복검사");
		});

		// 닉네임 중복검사 버튼에 이벤트 리스너 추가
		document.getElementById("nicknameCheck").addEventListener("click", function() {
			// 닉네임 중복검사 로직 추가
			alert("닉네임 중복검사");
		});
	</script>
	
	<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	
	</div>
<!------------------------------ 전체 프레임 end ------------------------------>

</body>
</html>