<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    

<!DOCTYPE html>
<html>
<head>
    <title>CodeName404</title>
    <meta charset="utf-8">
    
    <!-- 반응형 웹 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    
    <!-- style.css -->
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <!-- jQuery -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    
    <style>
	    #header {
	        margin-top: -20px;
	        width: 100%;
	        height: 500px;
	        background: url('./images/head.jpg') no-repeat;
	        background-position: center center;
	        background-size: cover;
	        border-bottom: 1px solid #A9A9A9;
	   	} 
    </style>
</head>
<body>

<!------------------------------ 전체 프레임 ------------------------------>
<div id="frame">
    
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

<!-- 헤더 --> <!-- #header css에 이미지 -->
<div id="header">
	<!-- <img src="./images/head.jpg"> -->
</div> 
    
<!-- 헤더 밑 이름 -->            
<h1 class="headline">CodeName 404</h1>

<!-- content 내용 -->
<div id="content">

   <!-- 1. 소개 -->
   <div id="introduce">
      
      	<!-- 먼저 왼쪽으로 날림 -->
      	<div id="intro-image">
           <img src="./images/muzik5.jpg">
        </div>
        
        <!-- 오른쪽으로 날림 -->
        <div id="intro-text">
           <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
        </div>
        
        <!-- 왼쪽으로 또 날림 -->
        <div id="spec">
           <p> 이름: 
            <br> 루카
            <br> 모카
            <br> 짜장
            <br> 춘장
            <br> 무지
            <br> 특기: 우다다다다다다다~</p>
        </div>
   </div>
    
    <!-- 왼쪽/가운데/오른쪽 -->            
   <div id="article">
        <!-- 왼쪽 -->
       <div id="left" class="column">
           <img src="./images/muzik3.jpg">
            <img src="./images/icon.png" class="icon"> <!-- 아이콘 이미지 -->
            <h2>HAWL</h2>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
        </div>
        <!-- 오른쪽 -->
        <div id="right" class="column">
           <img src="./images/muzik3.jpg">
           <img src="./images/icon.png" class="icon">
            <h2>HAWL</h2>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
        </div>
        <!-- 가운데 -->
          <div id="middle" class="column">
             <img src="./images/muzik4.jpg">
            <img src="./images/icon.png" class="icon">
            <h2>HAWL</h2>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
      </div>
   </div>

</div> <!-- content 내용 end -->
            
<!-- footer -->
<div id="footer">
   <div id="social">
      <img src="./images/sns.png">
   </div>
   <p class="russian">2023. CodeName404 ALL Right Reserved.</p>
</div>
    
</div>
<!------------------------------ 전체 프레임 end ------------------------------>

</body>
</html>

