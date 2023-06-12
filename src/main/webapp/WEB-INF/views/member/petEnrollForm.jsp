<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/pet_profile.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <jsp:include page="../common/common.jsp" />

  <title>마이페이지_펫프로필관리</title>
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
                  <li class="on">
                    <a href="myProfile.me">내 프로필</a>
                  </li>
                  <li>
                    <a href="petProfile.me">반려동물 프로필</a>
                  </li>
                  <li>
                    <a href="petsiterLike.me">펫시터 찜</a>
                  </li>
                  <li>
                    <a href="myBoard.me">내 게시글 및 댓글</a>
                  </li>
                  <li>
                    <a href="reservationList">예약 조회</a>
                  </li>
                  <li>
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
                <div id="titleWrapper">
                  <h3 class="title_11">펫 정보 등록하기</h3>
                </div>
                <form action="insert.me" method="post" id="petEnrollForm">
                  <div class="sub2">
                    <div class="enrollWrapper">
                      <p>
                        <label for="userId">● 이름 </label><br>
                        <input type="text" id="userId" name="userId" maxlength="15" placeholder="아이디를 입력해주세요." style="width:230px" required>
                      </p>
                      <span class="input_btn checkbox">
                        <label>● 성별</label><br>
                        <input type="checkbox" id="Male" value="M" name="gender"> <b>남</b>
                        <input type="checkbox" id="Female" value="F" name="gender"> <b>여</b> <br>
                      </span>
                      <p>
                        <label for="userNickname">● 견종 </label><br>
                        <input type="text" id="userNickname" name="userNickname" maxlength="15" placeholder="나만의 닉네임을 지어주세요." style="width:230px" required>
                      </p>
                      <p>
                        <label for="userPwd">● 생일 </label><br>
                        <input type="password" name="userPwd" id="userPwd" maxlength="15" placeholder="영문+숫자+특수문자 조합 8~16자리" style="width:300px" required><br>
                      </p>
                      <p>
                        <label for="">● 몸무게 </label><br>
                        <input type="password" name="checkPwd" id="checkPwd" maxlength="15" placeholder="정확히 기입해주세요." style="width:300px" onkeyup="passConfirm()" required>
                      </p>
                      <span class="input_btn checkbox">
                        <label>● 중성화여부 </label><br>
                        <input type="checkbox" name="yes" id="yes" value="Y"> <b>yes</b>
                        <input type="checkbox" name="no" id="no" value="N"> <b>no</b> <br>
                      </span>
                    </div>
                    <div class="btnWrapper">
                      <button type="reset" class="btn_reset">재입력</button>
                      <button type="submit" class="btn_submit" disabled>등록하기</button>
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