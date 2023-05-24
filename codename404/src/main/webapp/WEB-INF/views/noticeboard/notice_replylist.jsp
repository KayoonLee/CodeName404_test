<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../bootstrap.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
		
		// 수정 버튼 클릭
		$('.editreply').click(function() {
			var id  = $(this).attr('id');  // rno
			var txt = $('#td_'+id).text(); // replytext
			$('#td_'+id).html("<textarea style='resize: none;' rows='3' cols='30' id='tt_"+id+"'>"+txt
				+"</textarea>");
			
			// 수정, 삭제 버튼을 확인, 취소버튼으로 수정
			$('#btn_'+id).html(
			   "<input type='button' value='확인' class='btn btn-primary' onclick='up("+id+")'> "
			  +"<input type='button' value='취소' class='btn btn-danger'  onclick='lst()'>");
		});
	});
	
	// 확인버튼 클릭해서 내용을 수정
	function up(id) {
		var replytext = $('#tt_'+id).val();
		var formData = "notice_rno="+id+'&notice_replycontent='+replytext
			+"&notice_no=${notice.notice_no}";
			
		// 댓글 수정 요청하는 내용
		// DTO나 List를 json형태로 값을 주고 받는데 조작을해 자바스크립트 객체 형태로 처리해야된다.
		// (지금은 아님) hello project sample.jsp에서 위 방식을 썼다.
		// view.jsp에서 load함수로 부르기 때문에 view.jsp에 있는 div id 값을 쓸 수 있다.
		$.post('noticereplyupdate.notice',formData, function(data) {
			$('#noticereplist').html(data);
		});
	}
	
	// 취소 버튼 클릭
	 function lst() {
		 $('#noticereplist').load('noticereply.notice?notice_no=${notice.notice_no}');
		}
	 
		
	// 댓글 삭제
	function del(notice_rno,notice_no) {
		var formData="notice_rno="+notice_rno+"&notice_no="+notice_no;
		
		// 댓글 삭제 요청
		$.post("noticereplydelete.notice",formData, function(data) {
			$('#noticereplist').html(data);
		});
	}
</script>
</head>
<body>
	<div class="container" align="center">
			<c:if test="${empty noticereplist }">
			</c:if>
		<table class="table table-bordered">
			<c:if test="${not empty noticereplist }">
			<h2 class="text-primary">댓글</h2>
			<br>
			<tr>
				<th>댓글 작성자</th>
				<th>내용</th>
				<th>수정일</th>
				<th>수정·삭제여부</th>
				
			</tr>
			<c:forEach var="noticerep" items="${noticereplist}">
				<tr>
					<td>${noticerep.notice_renick}</td>
					<td id="td_${noticerep.notice_rno}">${noticerep.notice_replycontent}</td>
					<td>
					<fmt:formatDate value="${noticerep.notice_regdate }" pattern="yyyy-MM-dd HH:mm:ss EEE요일"/>
					</td>
					
					<td id="btn_${noticerep.notice_rno}">
						<c:if test="${noticerep.notice_renick==memberModel.nick }">							
							<input type="button" value="수정" class="editreply" id="${noticerep.notice_rno}">
							<input type="button" value="삭제"	 onclick="del(${noticerep.notice_rno},${noticerep.notice_no})">					
						</c:if>
						<c:if test="${!empty adminmodel.admin_nick}">							
							<input type="button" value="수정" class="editreply" id="${noticerep.notice_rno}">
							<input type="button" value="삭제"	 onclick="del(${noticerep.notice_rno},${noticerep.notice_no})">					
						</c:if>
						</td>
				</tr>
			</c:forEach>
			</c:if>
			<!-- notice.admin_nick말고 일반회원의 session nick값으로 변경해야됨 -->
		</table>
	</div>

</body>
</html>