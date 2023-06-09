<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/findPwdForm.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <jsp:include page="../common/common.jsp" />

  <title>비밀번호찾기</title>
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
          <div class="page_aticle aticle_type22">

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                <form id="mainContent" action="foundPwd.me" method="get">
                  <div class="sub1">
                    <div class="title1">
                      <h1>아이디/비밀번호 찾기</h1>
                    </div>
                    <div class="title2">
                      <h7>회원가입 시 등록하신 정보로 아이디 및 비밀번호를 확인하실 수 있습니다.</h7>
                    </div>
                  </div>
                  <div class="sub2">
                    <div class="btn_id1">
                      <button type="button" class="btn_id2" onclick="location.href='findIdForm.me';">아이디 찾기</button>
                    </div>
                    <div class="btn_pwd1">
                      <button type="button" class="btn_pwd2" onclick="location.href='findPwdForm.me';">비밀번호 찾기</button>
                    </div>
                  </div>
                  <div class="sub3">
                    <div class="checkWrapper">
                      <p>
                        <label for="login_id">아이디 </label>
                        <input type="text" name="userId" maxlength="15" placeholder="가입하신 아이디를 입력해 주세요." required><br>
                      </p>
                      <p class="pw01">
                        <label for="email">이메일 </label>
                        <input type="email" name="email" placeholder="@ 까지 정확하게 입력해 주세요." maxlength="30" required><br>
                      </p>
                      <div class="btn_mainCheck">
                        <button type="submit" class="btn_check">확인</button>
                      </div>
                    </div>
                  </div>
                </form>
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

</body>
</html>