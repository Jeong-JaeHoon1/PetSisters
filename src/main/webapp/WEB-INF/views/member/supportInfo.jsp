<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="/resources/css/common/main.css">
<link rel="stylesheet" href="/resources/css/member/supportInfo.css">
<jsp:include page="../common/common.jsp" />
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
    	
    <jsp:include page="../common/header.jsp" />	
    
    
    
    <!-- ���� ���� -->

    <main class="supportInfoArea">
      <section class="introductionSection">
        <div class="videoArea">
          <video loop="" muted="" autoplay="" playsinline="" webkit-playsinline="true" 
          style="display:flex;object-fit:cover;width:100%;height:770px;z-index:10">
          <source type="video/mp4" src="/resources/video/introductionVideo.mp4"></video>
        </div>
        <div class="adArea">
          <div class="mainSentence">
            ������ ����� ���� 1��, <br>
            ��ý������ �Բ��ؿ� <br>
          </div>
          <div class="subSentence">
            �츮������ ��������� �������� ������ ������ ����� <br>
            ȥ�� ������ �ݷ��������� �ູ�� �ð��� �����غ����? <br>
          </div>
          <div class="support">
            <p>�����ϱ�</p>
          </div>
        </div>
      </section>
      <section class="processSection">
        <div class="processContentArea">
          <p style="color: rgb(77, 80, 85); font-size: 35px; font-weight: 600;
          letter-spacing: -0.3px; line-height: 37px; padding: 0; margin: 0;">
          ��ý����� ����ʹ� �̷��� Ȱ���ؿ�!</p>
          <div><img alt="" src="/resources/img/member/1-2-3.png" style="width: 762px;  margin-top: 50px;"></div>
          <div style="display: flex; flex-direction: row;">
            <div style="width: 364px;">
              <p style="margin-top: 50px;  font-size: 25px; 
              letter-spacing: 0.2px; line-height: 31px; ">���� ����</p>
              <p style="margin-top: 24px;  font-size: 17px; 
              line-height: 30px; letter-spacing: 0.2px;">
              �� ����������� �����ϰ�<br>
              ������ ��¥�� ������ �����غ�����.</p>
            </div>
            <div style="width: 364px;">
              <p style="margin-top: 50px;  font-size: 25px; 
              letter-spacing: 0.2px; line-height: 31px; ">���� �� ��������</p>
              <p style="margin-top: 24px;  font-size: 17px; 
              line-height: 30px; letter-spacing: 0.2px;">
              �츮 ������ �ݷ������� ������,<br>
              �ð����� ���� ������ �ۼ��մϴ�.</p>
            </div>
            <div>
              <p style="margin-top: 50px; 
              font-size: 25px; letter-spacing: 0.2px; line-height: 31px; 
              ">���� �ޱ�</p>
              <p style="margin-top: 24px;  font-size: 17px; 
              line-height: 30px; letter-spacing: 0.2px;">
              ������ �ǽð����� Ȯ���ϰ�<br>
              �� ������ ������ �޾ƺ�����!</p>
            </div>
          </div>
        </div>
      </section>
      <section style="width: 100%; height: 1030px; display: flex; flex-direction: column; 
      justify-content: center; align-items: center;">
        <div style="width: 1020px; margin: 0px auto; display: flex; flex-direction: row; 
        justify-content: space-between;">
          <div style="width: 273px; align-items: center; border-bottom: 1px solid rgb(231, 231, 240); 
          padding-bottom: 70px;">
            <img alt="" src="/resources/img/member/����ѱٹ�ȯ��.png" style="height: 120px; 
            display: block; margin-left: -15px;">
            <p style="margin-top: 21px; color: rgb(77, 80, 85); font-size: 25px; line-height: 30px; 
            letter-spacing: -0.3px; font-weight: 500;">����� �ٹ� ȯ��</p>
            <p style="color: rgb(77, 80, 85); font-size: 17px; line-height: 30px; margin-top: 45px; 
            width: max-content;">����� �츮 ������ ���������<br>��������� �ູ�� �ð��� ���� �� �־��.</p>
          </div>
          <div style="width: 273px; align-items: center; border-bottom: 1px solid rgb(231, 231, 240); 
          padding-bottom: 70px;">
            <img alt="" src="/resources/img/member/�����ο�����ð�.png" style="height: 120px; 
            display: block; margin-left: -15px;">
            <p style="margin-top: 21px; color: rgb(77, 80, 85); font-size: 25px; line-height: 30px; 
            letter-spacing: -0.3px; font-weight: 500;">�����ο� ���� �ð�</p>
            <p style="color: rgb(77, 80, 85); font-size: 17px; line-height: 30px; margin-top: 45px; 
            width: max-content;">�����ο� �޹��� ������ ������Ȱ��<br>���� ���ϴ� ������ ���� �� �־��.</p>
          </div>
          <div style="width: 273px; align-items: center; border-bottom: 1px solid rgb(231, 231, 240); 
          padding-bottom: 70px;">
            <img alt="" src="/resources/img/member/�����100��������.png" style="height: 120px; 
            display: block; margin-left: -15px;">
            <p style="margin-top: 21px; color: rgb(77, 80, 85); font-size: 25px; line-height: 30px; 
            letter-spacing: -0.3px; font-weight: 500;">�� ��� 100���� ����</p>
            <p style="color: rgb(77, 80, 85); font-size: 17px; line-height: 30px; margin-top: 45px; 
            width: max-content;">�Ϸ� ��� 50,000������ �� �� 20��<br>���� ���� �� 100������ ������ �߻��ؿ�.</p>
          </div>
        </div>
        <div style="width: 1020px; margin: 70px auto 0px; display: flex; flex-direction: row; 
        justify-content: space-between;">
          <div style="width: 273px; align-items: center;">
            <img alt="" src="/resources/img/member/����������ý���.png" style="height: 120px; 
            display: block; margin-left: -15px;">
            <p style="margin-top: 21px; color: rgb(77, 80, 85); font-size: 25px; line-height: 30px; 
            letter-spacing: -0.3px; font-weight: 500;">����� ���� �ý���</p>
            <p style="color: rgb(77, 80, 85); font-size: 17px; line-height: 30px; margin-top: 45px; 
            width: max-content;">�Ҽ� �Ʒû簡 �׽� ����Ͽ�, ����� ����<br>
            �� ���� ��Ȳ �߻� �� ������ ����ص����.</p>
          </div>
          <div style="width: 273px; align-items: center;">
            <img alt="" src="/resources/img/member/���Ժ��ȸ�񹫷�.png" style="height: 120px; 
            display: block; margin-left: -15px;">
            <p style="margin-top: 21px; color: rgb(77, 80, 85); font-size: 25px; line-height: 30px; 
            letter-spacing: -0.3px; font-weight: 500;">���Ժ�, ��ȸ�� ����</p>
            <p style="color: rgb(77, 80, 85); font-size: 17px; line-height: 30px; margin-top: 45px; 
            width: max-content;">��ý������ ������ Ȱ�� ����� ���� �ʽ��ϴ�.<br>
            �ݾ� �δ� ���� ��ý������ Ȱ���� ������.</p>
          </div>
          <div style="width: 273px; align-items: center;">
            <img alt="" src="/resources/img/member/������������ͺ���.png" style="height: 120px; 
            display: block; margin-left: -15px;">
            <p style="margin-top: 21px; color: rgb(77, 80, 85); font-size: 25px; line-height: 30px; 
            letter-spacing: -0.3px; font-weight: 500;">���� ���� ����� ����</p>
            <p style="color: rgb(77, 80, 85); font-size: 17px; line-height: 30px; margin-top: 45px; 
            width: max-content;">����ʹ� ���ؿ� ���� ����� �ִ� 1ȸ 10����,<br>
            �ݷ����� ���ؿ� �ִ� 100������ �����մϴ�.</p>
            <p style="margin-top: 27px; font-size: 15px; color: rgb(153, 157, 167);">
              ����ʹ� ��å ������ ��� ���� ���� �Ұ�</p>
          </div>
        </div>
      </section>

    </main>

    <!-- ���� �� -->
    
    
    
    <jsp:include page="../common/footer.jsp" />
  </div>
  
  <script>
  AOS.init({
      duration: 1200,
    });
  </script>
</body>
</html>