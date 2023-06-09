<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet" href="/resources/css/reservation/reservationEnrollForm.css">
<title>결제 및 예약 완료</title>
</head>
<body>
<jsp:include page="../common/header.jsp" />	

  <div id="Container-Wrapper">
    <!-- 페이지 영역 시작 -->
    <div id="container">
      <div id="main">
        <div id="content">
          <div class="page_aticle aticle_type2">
            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                <div>
                  <div class="bodyContainer">
                    <h1>예약 완료</h1>
                    <!-- 박스 내부 -->
                    <div class="infoSec">
                    <input type="hidden" name="userNo" value="${loginUser.userNo}">
                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">체크인</div>
                          <div class="onedesc date1">2023-06-02</div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">체크아웃</div>
                          <div class="onedesc date2">2023-06-10</div>
                        </div>
                      </div>
                      
                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">신청일</div>
                          <div class="onedesc payDate">2023-06-01</div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">펫시터명</div>
                          <div class="onedesc petsitter">
                          	이주흔
                          </div>
                        </div>
                      </div>
	
                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">결제 금액</div>
                          <div class="onedesc payPrice">
                            <fmt:formatNumber value="550000" pattern="#,###,###"/>원
                          </div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">맡기실 반려견 수</div>
                          <div class="onedesc petAmount">1마리</div>
                        </div>
                      </div>

                      <div class="gridSec">
                      	<div class="requestSec">
                          <div class="requestTit">요청사항</div>
                          <div class="requestDesc request">살이 쪄서 간식은 조금만 주세요 감사합니다!</div>
                      	</div>
                      </div>

                    </div>
                  </div>
                  <!-- 박스 내부 -->
                </div>
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
              </div>
            </div>
            <!-- 본문 영역 끝-->
          </div>
        </div>
      </div>
    </div>
  </div>

<jsp:include page="../common/footer.jsp" />

</body>
</html>