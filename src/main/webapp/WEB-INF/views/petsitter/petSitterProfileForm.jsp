<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="/resources/css/petsitter/petSitterForm.css">
  <link rel="stylesheet" href="/resources/css/petsitter/petSitterProfileForm.css">
  <jsp:include page="../common/common.jsp" />

  <!-- input 항목 추가 -->
  <!-- <script src="jquery-1.7.1.min.js"></script> -->

  <!-- 파일 첨부 -->
  <script src="/resources/js/petSitterProfileForm.js"></script>

  <title>펫시터 프로필 수정</title>
</head>

<body>

	<script>
	
		var psService = "<c:out value='${p.petSitterService}'/>"; // 값을 JavaScript 변수에 할당
	    var psServiceArr = psService.split(","); // 쉼표(,)로 분할하여 배열로 변환
	
	    $(document).ready(function() {
	    	
	    	console.log(psServiceArr);
	    	
	    	for(var i = 0; i < psServiceArr.length; i++) {
	    		
	    		console.log(psServiceArr[i]);
	    		
	    		$("input:checkbox[name='petSitterService'][value='"+ psServiceArr[i] +"']").prop("checked", true);
	    	}
	    	
	    });
	    
	</script>

  <!-- 카카오맵 API 
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0f876d0e519ec1bc91c1da0c5e2829c7"></script>
  -->

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
                  <div class="title">
                    <h1>펫시터 프로필 수정</h1>
                  </div>
                  <br>
                  <div class="form-group">
                    <form method="post" action="update.pe">
	                 <div class="profileForm-area">
						<div class="form-check form-switch" id="pModeInput">
							<c:choose>
								<c:when test="${ p.petSitterMode eq 'Y' }">
									<input class="form-check-input" type="checkbox" role="switch" id="petSitterMode" value="Y" name="petSitterMode" checked>
								</c:when>
								<c:otherwise>
									<input class="form-check-input" type="checkbox" role="switch" id="petSitterMode" value="Y" name="petSitterMode">
								</c:otherwise>
							</c:choose>
							<label class="form-check-label" for="flexSwitchCheckChecked">&nbsp;펫시터 모드</label>
						</div>
	                 </div>
					<div class="formTitle">
                        <h5>제목</h5>
                        <input type="text" id="petSitterTitle" value="${ p.petSitterTitle }" name="petSitterTitle" maxlength="100" required>
                      </div>
                      <br>
                      <div class="introduction">
                        <h5>내용</h5>
                        <textarea rows="25" id="petSitterContent" name="petSitterContent" style="resize: none;" required>${ p.petSitterContent }</textarea>
                      </div>
                      <br>
                      <div>
                        <h5>돌봄 환경</h5>
                        <div class="careList">
                          <div>
                            <input type="text" id="careList" value="${ p.careList }" name="careList" placeholder="돌봄 환경을 ','로 구분하여 입력해주세요. 예)아파트,반려동물 없음,아이 있음 등등">
                          </div>
                        </div>
                      </div>
                      <br>
                      <div id="petService">
                        <h5>이용 가능 서비스</h5><br>
                        <div class="petServiceList">
                          <table>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="pickup" value="집앞픽업" name="petSitterService">
                                    <img src="/resources/img/petsitter/집 앞 픽업.png">
                                  </div>
                                  <div><p>집 앞 픽업<br>비용은 펫시터와 협의</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="hair" value="모발관리" name="petSitterService">
                                    <img src="/resources/img/petsitter/모발 관리.png">
                                  </div>
                                  <div><p>모발 관리<br>눈물 또는 빗질 관리 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="medicine" value="약물복용" name="petSitterService">
                                    <img src="/resources/img/petsitter/약물 복용.png">
                                  </div>
                                  <div><p>약물 복용<br>경구(입) 약물 복용 가능</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="emergency" value="응급처치" name="petSitterService">
                                    <img src="/resources/img/petsitter/응급 처치.png">
                                  </div>
                                  <div><p>응급 처치<br>응급 상황 시 병원 이동 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="bath" value="목욕가능 " name="petSitterService">
                                    <img src="/resources/img/petsitter/목욕 가능.png">
                                  </div>
                                  <div><p>목욕 가능<br>비용은 펫시터와 협의</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="walk" value="매일산책" name="petSitterService">
                                    <img src="/resources/img/petsitter/매일 산책.png">
                                  </div>
                                  <div><p>매일 산책<br>산책 및 실외 배변 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="play" value="실내놀이" name="petSitterService">
                                    <img src="/resources/img/petsitter/실내 놀이.png">
                                  </div>
                                  <div><p>실내 놀이<br>터그 놀이, 노즈워크 등</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="reserve" value="장기예약" name="petSitterService">
                                    <img src="/resources/img/petsitter/장기 예약.png">
                                  </div>
                                  <div><p>장기 예약<br>14일 이상 돌봄 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="oldDog" value="노견케어" name="petSitterService">
                                    <img src="/resources/img/petsitter/노견 케어.png">
                                  </div>
                                  <div><p>노견 케어<br>8년 이상 노견 돌봄 가능</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="puppy" value="퍼피케어" name="petSitterService">
                                    <img src="/resources/img/petsitter/퍼피 케어.png">
                                  </div>
                                  <div><p>퍼피 케어<br>1년 미만 퍼피 돌봄 가능</p></div>
                                </div>
                              </td>
                            </tr>
                          </table>
                        </div>
                      </div>
                      <br>
                      <div class="fileSection preview">
                        <h5>사진 첨부</h5>
                        <input type="file" name="" id="btnAtt" multiple="multiple">
                        <!-- 사진 미리보기 영역 -->
                        <div id="att_zone" data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
                      </div>
                      <br>
                      <div class="dateInput">
                        <h5>예약 불가능한 날짜 선택</h5>
                        <input type="date">
                      </div>
                      <br><br>
                      <div>
                        <h5>펫시터 위치 선택</h5>
                        <div id="map"></div>
                      </div>

                      <div align="center" class="formBtn">
                        <button type="submit" class="btn btn-primary">등록하기</button>
                        <button type="button" onclick="history.back()" class="btn btn-secondary">뒤로가기</button>
                      </div>
                    </form>
                  </div>
                </div>
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
              </div>
            </div>
            <!-- 본문 영역 끝-->
          </div>
        </div>
      </div>
    </div>

	<jsp:include page="../common/footer.jsp" />

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

  <!-- 카카오맵 API
  <script> 
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = {  
        center: new kakao.maps.LatLng(38.00994423, 126.9531742), // 지도의 중심좌표 
        level: 6 // 지도의 확대 레벨 (레벨 클수록 축소)
    }; 

    var map = new kakao.maps.Map(mapContainer, mapOption);  // 지도를 생성합니다 


    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addressSearch('경기도 연천군', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
    if (status === kakao.maps.services.Status.OK) {

    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

    // 결과값으로 받은 위치를 마커로 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: coords
    });

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
    } 
    });    

    // 지도를 클릭한 위치에 표출할 마커입니다
    var marker = new kakao.maps.Marker({ 
        // 지도 중심좌표에 마커를 생성합니다 
        position: map.getCenter() 
    }); 
    // 지도에 마커를 표시합니다
    marker.setMap(map);

    // 지도에 클릭 이벤트를 등록합니다
    // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
    kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        

        // 클릭한 위도, 경도 정보를 가져옵니다 
        var latlng = mouseEvent.latLng; 

        // 마커 위치를 클릭한 위치로 옮깁니다
        marker.setPosition(latlng);

        var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
        message += '경도는 ' + latlng.getLng() + ' 입니다';

        var resultDiv = document.getElementById('clickLatlng'); 
        resultDiv.innerHTML = message;

    });

    // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
    var mapTypeControl = new kakao.maps.MapTypeControl();

    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
    // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
    var zoomControl = new kakao.maps.ZoomControl();
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
</script>
 -->

</body>
</html>