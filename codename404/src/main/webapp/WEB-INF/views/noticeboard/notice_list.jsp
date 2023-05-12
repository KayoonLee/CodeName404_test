<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Notice Board</title>

<jsp:include page="../bootstrap.jsp"></jsp:include>
</head>
<body>
<div id="frame">
<jsp:include page="../navigator.jsp"></jsp:include>
	<!------------------------------ 전체 프레임 ------------------------------>
				
<!-- 검색 기능 -->

<div class="container" style="border: dashed 1px red;" align="center">
<form action="adminusers.manager">
<input type="hidden" name="pageNum" value="1">
  <h2>공지게시판</h2>    
  <div class="search-wrapper" style="border: dashed 1px red;">
	<select>
		<option value="id"		<c:if test="${search=='subject'}">selected="selected" </c:if>>ID</option>
		<option value="nick"	<c:if test="${search=='content'}">selected="selected" </c:if>>닉네임</option>
		<option value="register"<c:if test="${search=='writer'}">selected="selected" </c:if>>가입일</option>
	</select>
	&nbsp;&nbsp;&nbsp; <!-- 한 칸 띄어쓰기 -->
	<input type="text" name="keyword" placeholder="검색어를 입력하세요.">
	<button type="submit">검색</button>
</div>
</form>
      
  <table class="table table-striped">
    <thead>
      <tr>  
	<th>NO</th>
	<th>제목</th>
	<th>작성자</th>
	<th>작성일</th>
	<th>조회수</th>
      </tr>
    </thead>
    <tbody>
      <c:set var="num" value="${num }"></c:set>
	<c:forEach var="notice" items="${notice_list}">
	<tr>
		<td>
			${notice.notice_no }			
		</td>
		<td>
		${notice.notice_subject}
		</td>
		<td>${notice.admin_nick }</td>
		<td>
		<fmt:formatDate value="${notice.notice_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
		${notice.notice_date}
		</td>
		<td>${notice.notice_readcount}</td>	
	</tr>
	</c:forEach>
    </tbody>
  </table>

						<div align="center">
							<a href="${path}/insertForm" class="btn btn-info">글 입력</a>
						</div>
					</div>

				</div>
			</div>



		</div>
		<!-- content end -->
	</div>
	<!-- 스터디 게시판 컨테이너 end -->

	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

	</div>
	<!------------------------------ 전체 프레임 end ------------------------------>

</body>
</html>