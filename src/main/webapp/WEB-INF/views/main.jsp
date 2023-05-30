<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="/resources/css/common/main.css">
<jsp:include page="./common/common.jsp" />
  <!-- AOS-->
  <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
    <!-- AOS-->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<script src="/resources/js/main.js"></script>


<title>��ý�����</title>
</head>
<body>

    <div id="main">
    	
    <jsp:include page="./common/header.jsp" />	
    
      <div id="topImg" onclick="location.href='#';">
        <video class="mainVideo" muted autoplay loop>
          <source src="/resources/video/����������-���.mp4" type="video/mp4">
        </video>
      </div>
      <div id="contents" class="page_aticle">
        <!-- ž ��ư -->
        <div class="top_btn">
          <button id="go-top" alt="�� ���ΰ���" style="display: none;"></button>
        </div>
        <!-- ž ��ư �� -->

        <!-- �����̵� -->
        <div class="wrap">
          <div class="slider">

            <div class="item">
              <img src="/resources/img/main/��������_����-011.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/�߰�2.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/�߰�3.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/�߰�4.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/�߰�5.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/�߰�6.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/�߰�7.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/�߰�8.png" alt="">
            </div>

          </div>
        </div>
        <!-- �����̵� -->

      </div>

      <!-- �ϴ� ��� ���� -->
      <%-- 
      <div id="bottomImg" data-aos="fade-zoom-out">
      </div>
      --%>
      <!-- �ϴ� ��� �� -->
      <section id="section2">
        <div class="bottomWrapper">
          <div class="bottomLeft">
            <h1 data-aos="fade-right">
              ����� �Ϸ縦<br>
              �����ϼ���!
            </h1>

            <div class="bottomText2" data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="200" data-aos-offset="0">
              ����, ���� ������ٿ��� ����������! <br>
              �������� ��ý���� �� ���̿� <br>
              �Բ��մϴ�!
            </div>
          </div>
          <div class="bottomRight">
            <div class="bottomCard" data-aos="fade-up-left">
              <img src="/resources/img/main/����1.png" alt="banner">
              <!-- 
              <div class="bottomTextArea">
                <h3>���� ����</h3>
                <p>�Ϸ� �̻� �ñ涧</p>
                <div>
                  <span class="bottomPrice">55,000</span>
                  <span class="bottomPriceText">�� ����!</span><br>
                </div>
              </div>
              <div class="bottomBtn">
                <button type="button" class="btn btn-primary" style="border-radius: 17px; width: 100px; height: 40px; font-size: large; font-weight: 900;">�����ϱ�</button>
              </div>
               -->
            </div>
            <div class="bottomCard" data-aos="fade-down-left">
              <img src="/resources/img/main/����2.png" alt="banner">
              <!--  
              <div class="bottomTextArea">
                <h3>��Ŭ�� ����</h3>
                <p>������ �̻� �ñ涧</p>
                <div>
                  <span class="bottomPrice">385,000</span>
                  <span class="bottomPriceText">�� ����!</span><br>
                </div>
              </div>
              <div class="bottomBtn">
                <button type="button" class="btn btn-primary" style="border-radius: 17px; width: 100px; height: 40px; font-size: large; font-weight: 900;">�����ϱ�</button>
              </div>
              -->
            </div>
          </div>
        </div>
      </section>

      <div id="backgroundImgSection">
      </div>

      <div id="middelBottomImgSection" data-aos="fade-zoom-in">
      </div>

      <div id="mainBottomSection" data-aos="fade-zoom-in" style="position: relative;">
        <div id="moomyeong">
      </div>
    </div>
    
    <jsp:include page="./common/footer.jsp" />
  </div>
  
  <script>
  AOS.init({
      duration: 1200,
    });
  </script>
</body>
</html>