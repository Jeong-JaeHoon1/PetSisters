<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/my_board.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <jsp:include page="../common/common.jsp" />

  <title>마이페이지_내게시글관리</title>
</head>
<body>
  <!-- 헤더 영역 시작-->
    <jsp:include page="../common/header.jsp" />	 
  <!-- 헤더 영역 끝-->

  <div id="Container-Wrapper">
    <!-- 페이지 영역 시작 -->
    <div id="container">
      <div id="main">
        <div id="content">
          <div class="page_aticle aticle_type2">
             <!-- 사이드 메뉴바 -->
             <div id="snb" class="snb_my" style="position: absolute;">
				      <img src="/resources/img/main/사이드바이미지.png" alt="sideBarImg">
				      <h2 class="tit_snb">My Page</h2>
				      <div class="inner_sub">
				        <ul class="list_menu">
				          <li class="myProfile.me">
				            <a href="myProfile.me">내 프로필</a>
				          </li>
				          <li class="petList.me">
				            <a href="petList.me">반려동물 프로필</a>
				          </li>
				          <li class="petsiterLike.me">
				            <a href="petsiterLike.me">펫시터 찜</a>
				          </li>
				          <li class="myBoard.me on">
				            <a href="myBoard.me">내 게시글</a>
				          </li>
				          <li class="reservationList">
				            <a href="reservationList">예약 조회</a>
				          </li>
				          <li class="journalList">
				            <a href="journalList">돌봄 일지</a>
				          </li>
				        </ul>
				      </div>
				    </div>
            <!-- 사이드 메뉴바 끝 -->

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                <!--<div style="height: 1000px; background-color: beige;"></div> -->
                <div id="my_contents">
                  <div class="btn_bo">
                    <button type="button" class="btn_bo2" onclick="goPage('myBoard.me')">내 게시글</button>
                  </div>
                </div>
                <div id="main_content">
                  <div id="boardWrapper">
                    <table id="boardList" class="table table-hover">
                      <thead>
                        <tr>
                          <th width="60%">제목</th>
                          <th width="10%">조회수</th>
                          <th width="10%">댓글수</th>
                          <th width="20%">날짜</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach var="b" items="${ list }">
                          <tr>
                            <td>${b.boardTitle}</td>
                            <td>${b.count}</td>
                            <td>${b.replyCount}</td>
                            <td>${b.createDate}</td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
                <!-- 페이지네이션-->
								<div id="pagination2">
									<nav aria-label="Page navigation example">
										<c:if test="${ pi.listCount != 0 }">
										<ul id="pagiUl" class="pagination paginationUlTag">

											<c:choose>
												<c:when test="${ pi.currentPage eq 1 }">
													<li class="arrowTag disabled"><a href="">&lsaquo;</a></li>
												</c:when>
												<c:otherwise>
													<li class="arrowTag"><a href="petsiterLike.me?cPage=${ pi.currentPage - 1 }">&lsaquo;</a></li>
												</c:otherwise>
											</c:choose>

											<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }" step="1">
												<li class="page-item active"><a class="page-link" href="petsiterLike.me?cPage=${ p }">${ p }</a></li>
											</c:forEach>

											<c:choose>
												<c:when test="${ pi.currentPage eq pi.maxPage }">
													<li class="arrowTag disabled"><a href="javascript:void(0)">&rsaquo;</a></li>
												</c:when>
												<c:otherwise>
													<li class="arrowTag"><a href="petsiterLike.me?cPage=${pi.currentPage + 1}">&rsaquo;</a></li>
												</c:otherwise>
											</c:choose>
										</ul>
									</c:if>
									</nav>
								</div>
								<!-- 페이지네이션-->
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
              </div>
            </div>
            <!-- 본문 영역 끝-->
          </div>
        </div>
      </div>

    </div>
  </div>
  <!-- Footer 영역 시작 -->
    <jsp:include page="../common/footer.jsp" /> 
  <!-- Footer 영역 끝 -->
  <script>
    function goPage(page) {
      location.href = page;
    }
  </script>
</body>
</html>