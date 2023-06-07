<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <link rel="stylesheet" href="/resources/css/inquiry/adminInquiryList.css">
  <jsp:include page="../common/common.jsp" />
  
  <title>1:1 문의 / 관리자</title>
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
              <img src="/resources/img/사이드바이미지.png" alt="sideBarImg">
              <h2 class="tit_snb">고객센터</h2>
              <div class="inner_sub">
                <ul class="list_menu">
                  <li>
                    <a href="list.no">공지사항</a>
                  </li>
                  <li>
                    <a href="/showFaq">자주하는 질문</a>
                  </li>
                  <li class="on">
                    <a href="event.preventDefault();">1:1 문의 관리</a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- 사이드 메뉴바 끝 -->

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <div class="title">
                  <h2>1:1 문의 관리</h2>
                  <hr/>
                </div>

                <br/>
                
                <table id="inquiryTable" style="text-align: center;">
                  <thead>
                    <tr class="category">
                        <th>제목</th>
                        <th width="100">작성자</th>
                        <th width="100">작성일</th>
                        <th width="100">답변상태</th>
                    </tr>
                  </thead>
                  <tbody id="inquiryBody">
                    <a class="inquiry" href="#">
                      <tr>
                        <td>우리 강아지에게 없던 상처가 생겼어요..</td>
                        <td>이주흔</td>
                        <td>2023-05-29</td>
                        <td>답변대기</td>
                        <%-- <c:choose>
								<c:when test="답변내용이있음">
									답변완료
								</c:when>
								<c:otherwise>
									답변대기
								</c:otherwise>
							</c:choose> --%>
                      </tr>
                    </a>
                    <a class="inquiry" href="#">
                      <tr>
                        <td>생후 몇개월부터 맡길 수 있나요?</td>
                        <td>이소연</td>
                        <td>2023-05-28</td>
                        <td>답변완료</td>
                      </tr>
                    </a>
                    <a class="inquiry" href="#">
                      <tr>
                        <td>펫시팅 서비스가 불만족스러워요.</td>
                        <td>정재훈</td>
                        <td>2023-05-27</td>
                        <td>답변완료</td>
                      </tr>
                    </a>
                  </tbody>
                </table>
                
                <br/>
                <!-- 페이지네이션-->
                <div id="pagination">
                    <nav aria-label="Page navigation example">
                      <ul id="pagiUl" class="pagination paginationUlTag">
                        <li class="arrowTag">
                          <a href="">&lsaquo;</a>
                        </li>
                        <li class="page-item active">
                          <a class="page-link" href="#">1</a>
                        </li>
                        <li class="page-item">
                          <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item">
                          <a class="page-link" href="#">3</a>
                        </li>
                        <li class="arrowTag">
                          <a href="">&rsaquo;</a>
                        </li>
                      </ul>
                    </nav>
                  </div>
                  <!-- 페이지네이션-->
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
  
</body>
</html>