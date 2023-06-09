<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <link rel="stylesheet" href="/resources/css/inquiry/adminInquiryAnswer.css">
  <jsp:include page="../common/common.jsp" />
  
  <title>1:1 문의 상세 / 관리자</title>
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
            	<jsp:include page="../common/csSidebar.jsp" />
            <!-- 사이드 메뉴바 끝 -->

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <div class="title">
                    <h2>1:1 문의 관리</h2>
                    <hr/>
                </div>
                
                <br/>
                
                <div class="inquiryDetail">
                    <input type="hidden" name="memberNo">
                    <table id="inquiryDetail" style="text-align: center;">
                        <tr>
                            <th>제목</th>
                            <td>
                                <div class="inquiry">우리 강아지에게 없던 상처가 생겼어요..</div>
                            </td>
                        </tr>
                        <tr>
                            <th>작성일</th>
                            <td>
                                <div class="inquiry">2023-05-29</div>
                            </td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <div class="inquiry inquiryContent">
                                    저번 주말에 펫시팅을 맡겼었는데 오늘 확인해보니 아이에게 생긴지 얼마 안 된 상처가 발견됐습니다. <br/>
                                    펫시터에겐 이와 관련해서 전달받은 내용이 없었고요... 확인 부탁드립니다.
                                </div>
                            </td>
                        </tr>
                        <tr>
                          <th>첨부파일</th>
                          <td>
                            <div class="attZone">
                              <div class="items">
                                <img src="/resources/img/두부02-0107.jpg">
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr>
                            <th>답변상태</th>
                            <td style="text-align: left;">
                              <a href="" class="btn btn-outline-primary">답변 완료</a>
                            </td>
                        </tr>
                    </table>
                </div>
                
                
                <br/>
                <div class="replyDetail">
                  <table id="replyDetail" style="text-align: center;">
                    <tr>
                      <th>댓글(3)</th>
                      <td>
                        <textarea class="replyContent"></textarea>
                      </td>
                      <td>
                        <button class="btn btn-outline-secondary" onclick="addReply();">등록</button>
                      </td>
                    </tr>
                  </table>
                </div>

                <br/>
                  <div style="text-align: right;">
                    <a href="" class="btn btn-primary">목록으로</a>
                  </div>
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