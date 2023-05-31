<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/pet_profile.css">
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
              <img src="/resources/img/사이드바이미지.png" alt="sideBarImg">
              <h2 class="tit_snb">My Page</h2>
              <div class="inner_sub">
                <ul class="list_menu">
                  <li class="on">
                    <a href="#">내 프로필</a>
                  </li>
                  <li>
                    <a href="#">반려동물 프로필</a>
                  </li>
                  <li>
                    <a href="#">펫시터 찜</a>
                  </li>
                  <li>
                    <a href="#">내 게시글 및 댓글</a>
                  </li>
                  <li>
                    <a href="#">예약 조회</a>
                  </li>
                  <li>
                    <a href="#">내 후기</a>
                  </li>
                  <li>
                    <a href="#">돌봄 일지</a>
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
                  <h3 class="title_11">내 프로필 정보</h3>
                </div>
                <div id="profileWrapper">
                  <hr>
                    <div class="file_main">
                      <label>사진</label>
                      <div class="file_change">
                        <img class="profile_img" src="/resources/img/로이-4052.jpg" />
                        <div class="profile_con">
                          <button type="button" class="img_btn">사진변경</button>
                          <p>등록된 사진은 반려견의 프로필입니다.</p>
                        </div>
                      </div>
                    </div>
                  <hr>
                  <label>이름</label>
                  <input class="pet_name" placeholder="찰스" />
                  <button type="button" class="pwd_btn">이름 변경</button>
                  <hr>
                  <label>성별</label>
                  <input class="pet_gender" placeholder="남자" />
                  <button type="button" class="pwd_btn">성별 변경</button>
                  <hr>
                  <label>견종</label>
                  <input class="pet_type" placeholder="개나고양이나" />
                  <button type="button" class="nick_btn">견종 변경</button>
                  <hr>
                  <label>생일</label>
                  <input class="pet_birth" placeholder="sy@naver.com" />
                  <button type="button" class="email_btn">생일 변경</button>
                  <hr>
                  <label>몸무게</label>
                  <input class="pet_kg" placeholder="010-7777-8888" />
                  <button type="button" class="phone_btn">몸무게 변경</button>
                  <hr>
                  <span class="fix checkbox">
                    <label>중성화</label><br>
                    <input type="checkbox" name="yes" id="yes" value="Y"> Yes
                    <input type="checkbox" name="no" id="no" value="N"> No <br>
                  </span>

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
  <!-- Footer 영역 시작 -->
    <jsp:include page="../common/footer.jsp" /> 
  <!-- Footer 영역 끝 -->

  <script>
    $(document).ready(function () {
      $(window).scroll(function () {
        var scrollTop = $(document).scrollTop();
        var footerOffset = $(".link_footer").offset().top;
        var windowHeight = $(window).height();

        if (scrollTop + windowHeight > footerOffset) {
          scrollTop = footerOffset - windowHeight;
        }

        $(".snb_my").stop();
        $(".snb_my").animate({ "top": scrollTop });
      });
    });
  </script>
</body>
</html>