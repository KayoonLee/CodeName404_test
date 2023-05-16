<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지게시판 수정페이지</title>
<jsp:include page="../bootstrap.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<jsp:include page="../navigator.jsp"></jsp:include>
	 <h1>공지 게시글 상세페이지</h1>
	<div class="container" align="center">
      <h2 class="text-primary">게시글 수정</h2>
	<form action="notice_Update.notice?notice_no=${noticeboard.notice_no}&pageNum=${pageNum}" method="post">
      <table class="table table-bordered">
         <tr>
            <td>글 제목</td>
            <td><input name="notice_subject" id="notice_subject" size="40"
            class="input_box" value="${noticeboard.notice_subject }"/>
            </td>
         </tr>
         <tr>
            <td>글 내용</td>
            <td><pre>
                  <textarea cols="40" rows="10" name="notice_content" id="notice_content"
                  class="input_box">${noticeboard.notice_content }</textarea>
               </pre></td>
         </tr>
         <tr>
					<!-- 페이지 가지고 가야됨 -->
				<td colspan="2" align="center"><a href="notice_View?pageNum=${pageNum}">
						<button type="button" class="btn btn-info">뒤로</button>
				</a>
					

  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal">수정</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">게시글 수정여부</h4>
        </div>
        <div class="modal-body">
          <p>정말 수정 하시겠습니까?</p>
        </div>
        <div class="modal-footer">
         <!-- 페이지 갖고 가야되는데 아직 안함. -->
          
          <button type="submit" class="btn btn-warning">확인</button>         
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
			</tr>				
      </table>
		</form>
		
	</div>
	<div>
		<jsp:include page="../footer.jsp"></jsp:include>
		</div>
</body>
</html>