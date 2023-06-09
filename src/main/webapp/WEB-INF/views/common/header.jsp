<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">
<!-- alertify 라이브러리 연동 구문 -->
<!-- JavaScript -->
<script
	src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<!-- CSS -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
<!-- Default theme -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />
<!-- Semantic UI theme -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css" />

<!-- 일회성 알람문구 띄우기 -->
<!-- 주의사항 : script 태그 내부에서는 custom action 태그를 사용 불가함 -->
<c:if test="${ not empty alertMsg }">
	<script>
		alertify.alert('알림', '${ alertMsg }')
	</script>
	<c:remove var="alertMsg" scope="session" />
</c:if>


<c:if test="${ not empty deleteMsg }">
	<script>
		alertify.alert('알림', '${ deleteMsg }',
				function() {
					alertify.success('삭제되었습니다.');
				});
	</script>
	<c:remove var="deleteMsg" scope="session" />
</c:if>

<nav class="navbar navbar-expand-lg bg-light fixed-top">
	<div class="container-fluid">
		<a class="navbar-brand" href="/"><img class="headerLogo"
			src="/resources/img/main/새로운로고.png" alt="headerLogo"></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-end"
			id="collapsibleNavbar">
			<ul class="navbar-nav">
			<!-- 
				<li class="nav-item"><a class="nav-link" href="errorPage">dpdp</a></li>
			 -->	
				<li class="nav-item"><a class="nav-link" href="list.pe">펫시터 찾기</a></li>
				<li class="nav-item">
					<a class="nav-link" href="main.bo">커뮤니티</a>
					<ul class="toggle">
						<li class="poppy"><a class="selectToggle" href="mypetList.bo">강아지 자랑</a></li>
						<li><a class="freeBoard selectToggle" href="freeList.bo?categoryMain=1">자유게시판</a></li>
					</ul>
				</li>
				<li class="nav-item"><a class="nav-link" href="chatForm.ch">채팅</a></li>
				<li class="nav-item"><a class="nav-link" href="list.no">고객센터</a></li>

				<c:choose>
					<c:when test="${ empty loginUser }">
						<li class="nav-item"><a class="nav-link" href="loginForm.me">로그인</a>
						</li>
						<li class="nav-item"><a class="nav-link petsiter"
							href="supportInfo.me">펫시터지원</a></li>
					</c:when>
					<c:when test="${ loginUser.userName eq '관리자' }">
						<li class="nav-item"><a class="nav-link" href="myProfile.me">마이페이지</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="logout.me">로그아웃</a>
						</li>
						<li class="nav-item"><a class="nav-link admin"
							href="member.da">관리자 메뉴</a></li>
					</c:when>
					<c:otherwise>
						<c:if test="${loginUser.sitterStatus eq 'Y'}">
						<li class="nav-item"><a class="nav-link" href="petsitterRev">예약관리</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="myProfile.me">마이페이지</a></li>
						</c:if>
						<c:if test="${loginUser.sitterStatus eq 'N'}">
						<li class="nav-item"><a class="nav-link" href="myProfile.me">마이페이지</a>
						</li>
						</c:if>
						<li class="nav-item"><a class="nav-link" href="logout.me">로그아웃</a>
						</li>
						<c:if test="${loginUser.sitterStatus eq 'Y'}">
						<li class="nav-item"><a class="nav-link petsiter"
							href="detail.pe?pno=${loginUser.petsitterNo}">펫시터 설정</a>
						</li>
						</c:if>
						<c:if test="${loginUser.sitterStatus eq 'N'}">
						<li class="nav-item"><a class="nav-link petsiter"
							href="supportInfo.me">펫시터 지원</a>
						</li>
						</c:if>
					</c:otherwise>
				</c:choose>

			</ul>
		</div>
	</div>
</nav>
