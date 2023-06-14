<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <!--제이쿼리-->    
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/pet_profile.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <jsp:include page="../common/common.jsp" />
  
  <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>

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
                    <a href="petList.me">반려동물 프로필</a>
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
                  <h3 class="title_11">펫 프로필 상세정보</h3>
                </div>
                <form id="profileWrapper" action="petUpdate.me" method="post">
                  <hr>
                    <div class="file_main">
                      <label>사진</label>
                      <div class="file_change">
                        <img class="profile_img" src="/resources/img/main/로이-4052.jpg" />
                        <div class="profile_con">
                          <button type="button" class="img_btn">사진변경</button>
                          <p>등록된 사진은 반려견의 프로필입니다.</p>
                        </div>
                      </div>
                    </div>
                  <hr>
                  <label>이름</label>
                  <input class="pet_name" placeholder="${ d.dogName }" />
                  <hr>
                  <label>성별</label>
                  <input type="radio" id="Male" value="M" name="dogGender"> 남
                  <input type="radio" id="Female" value="F" name="dogGender"> 여
                  <hr>
                  <label>견종</label>
                  <input class="pet_type" placeholder="${ d.dogBreed }" />
                  <hr>
                  <label>생일</label>
                  <input class="pet_birth" placeholder="${ d.dogBirthday }" />
                  <hr>
                  <label>몸무게</label>
                  <input class="pet_kg" placeholder="${ d.dogWeight }" /> kg
                  <hr>
                  <label>중성화</label>
                  <input type="radio" name="neutralizationStatus" id="Yes" value="Y"> Yes
                  <input type="radio" name="neutralizationStatus" id="No" value="N"> No
                  <hr>
                  <div class="note_main">
	                  <div class="note1">
		                  <label>돌봄시 <br>참고사항</label>
		              </div>
	                  <div class="noteArea">
			              <textarea class="dog_note" cols="50" rows="5" placeholder="${ d.dogNote }"></textarea><br>
			              <div class="count"><span>0</span>/100</div>
	                  </div>
                  </div>
                  <div class="btnArea">
                  	<button type="submit" class="update_btn">수정하기</button>
                  </div>
                  <br>
                </form>
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
              </div>
            </div>
            <!-- 본문 영역 끝-->
          </div>
        </div>
      </div>
    </div>
    
    <script>
       $(function() {
                    		
		  if("${ d.dogGender }" != "")
		              			
		   $("input[value=${ d.dogGender }]").attr("checked", true);
                    		
         });
    </script>
    
    <script>
       $(function() {
                    		
		 if("${ d.neutralizationStatus }" != "")
		              			
		  $("input[value=${ d.neutralizationStatus }]").attr("checked", true);
                    		
      });
     </script>
    
    <!-- textarea 글자수 제한 -->
    <script>
	    $('.noteArea textarea').keyup(function(){
	    	  var content = $(this).val();
	    	  $('.noteArea .count span').html(content.length);
	    	  if (content.length > 100){
	    	    alert("최대 100자까지 입력 가능합니다.");
	    	    $(this).val(content.substring(0, 100));
	    	    $('.text_box .count span').html(100);
	    	  }
	    	});
    </script>
    
  </div>
  <!-- Footer 영역 시작 -->
    <jsp:include page="../common/footer.jsp" /> 
  <!-- Footer 영역 끝 -->

</body>
</html>