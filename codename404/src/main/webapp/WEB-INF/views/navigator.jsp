<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
   <title>Study List</title>
<jsp:include page="bootstrap.jsp"></jsp:include>
</head>
<body>

<!-- 네비게이션 바/부트스트랩 --> 
<nav class="navbar navbar-inverse">
<div class="container-fluid">
        
    <div class="navbar-header">
        <a class="navbar-brand" href="#" onclick="location='main.do'">CodeName404</a>
    </div>
        
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
            <li><a href="#" onclick="location='notice_list.notice'">Notice</a></li> <!-- active -->
            <li><a href="#" onclick="location='free_list.free'">FreeBoard</a></li>
            <li><a href="#" onclick="location='study_list.study'">Study</a></li>
            <li><a href="#" onclick="location='qna_list.qna'">Q&amp;A</a></li>
            
<!-- dropdown 기능 -->
<!-- 
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    Q&amp;A<span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">해결</a></li>
                    <li><a href="#">미해결</a></li>
                </ul>
            </li>
-->
        </ul>
        
        	<!-- 로그아웃 상태 -->
          <c:if test="${empty sessionScope.email }">
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#" onclick="location='signup_form.do'">
            	<span class="glyphicon glyphicon-user"></span> SignUp</a>
            </li>
            <li><a href="#" onclick="location='login_form.do'">
            	<span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
        </c:if>
        
        <!-- 로그인 상태 -->
        <c:if test="${!empty sessionScope.email }">
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#" onclick="location='signup_form.do'">
            	<span class="glyphicon glyphicon-user"></span>MyPage </a>
            </li>
            <li><a href="#" onclick="location='logout_form.do'">
            	<span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
        </ul>
        </c:if>
    </div> 
</div>
</nav> 

</body>
</html>