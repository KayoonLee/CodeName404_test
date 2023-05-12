<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login Board</title>

<!-- loginstyle.css -->
<jsp:include page="../bootstrap.jsp"></jsp:include>

</head>
<body>


 
	<!------------------------------ 전체 프레임 ------------------------------>
	<div id="frame">
		<!-- 네비게이션 바/부트스트랩 -->
		<jsp:include page="../navigator.jsp"></jsp:include>

		<div>

			<form action=login.do method=post>
				<h1>로그인</h1>
				<div class="input-field">
					<input type="text" id="id" name="id" placeholder="이메일을 입력해주세요" /> <i
						class="fas fa-user"></i>
				</div>

				<div class="input-field">
					<input type="password" id="passwd" name ="passwd" placeholder="비밀번호를 입력해주세요" /> <i
						class="fas fa-lock"></i>
				</div>

				<div class="forgot-password">
					<a href="#" onclick="location='findPassword.do'">비밀번호 찾기</a>
				</div>

				<input type="submit" class="btn" value="로그인" >

			</form>
		</div>

		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>

	</div>
	<!------------------------------ 전체 프레임 end ------------------------------>
</body>
</html>