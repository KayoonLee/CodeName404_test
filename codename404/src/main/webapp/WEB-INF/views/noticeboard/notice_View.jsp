<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지게시판 상세페이지</title>
<jsp:include page="../bootstrap.jsp"></jsp:include>
</head>
<body>
   <jsp:include page="../navigator.jsp"></jsp:include>
   <h1>공지 게시글 상세페이지</h1>
   <div class="container" align="center">
      <h2 class="text-primary">게시글 상세정보</h2>

      <table class="table table-bordered">
         <tr>
            <td>작성자 닉네임</td>
            <td>${noticeboard.admin_nick }</td>
         </tr>
         <tr>
            <td>글 제목</td>
            <td>${noticeboard.notice_subject }</td>
         </tr>
         <tr>
            <td>글 내용</td>
            <td><pre>
                  <textarea cols="40" rows="10" readonly=" ">${noticeboard.notice_content }</textarea>
               </pre></td>
         </tr>
         <tr>
            <td>작성일</td>
            <td>${noticeboard.notice_date}</td>
         </tr>
         <tr>
            <td>조회수</td>
            <td>${noticeboard.notice_readcount}</td>
         </tr>
      </table>
      <a href="notice_list.notice?pageNum=${pageNum}"><button
            class="btn btn-info">목록</button></a> &nbsp;&nbsp;&nbsp; <a
         href="notice_UpdateForm.notice?notice_no=${noticeboard.notice_no}&pageNum=${pageNum}">
         <button class="btn btn-warning">수정</button>
      </a> &nbsp;&nbsp;&nbsp; 
      
      
      <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">삭제</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">게시글 삭제여부</h4>
        </div>
        <div class="modal-body">
          <p>정말 삭제 하시겠습니까?</p>
        </div>
        <div class="modal-footer">
         <!-- 페이지 갖고 가야되는데 아직 안함. -->
          
          <button type="submit" class="btn btn-danger" id="adminuserdeleteBtn">확인</button>         
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div></div></div>
      		
      
      
      
      
      
      
      
      
      <%-- <div class="container">
         <button type="button" class="btn btn-info" data-toggle="collapse"
            data-target="#demoreply">댓글</button>
         <div id="demoreply" class="collapse">
            <form name="frm" id="frm">
               <input type="hidden" name="notice_renick" value="${noticeboard.notice_renick}">
               <input type="hidden" name="notice_no" value="${noticeboard.notice_no}"> 댓글 :
               <textarea rows="3" cols="50" name="notice_replycontent"></textarea>
               <input type="button" value="확인" id="repInsert"> 
            </form>--%>
       <!--   </div>
      </div> -->
      <!-- footer -->
      <jsp:include page="../footer.jsp"></jsp:include>
      </div>
      <script>
		$("#adminuserdeleteBtn").on('click', function(e){
			e.preventDefault();
			self.location = "notice_Delete.notice?notice_no=${noticeboard.notice_no}";
		});
	</script>
</body>
</html>