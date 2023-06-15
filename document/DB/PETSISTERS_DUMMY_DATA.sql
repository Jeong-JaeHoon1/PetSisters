--------------------------------------------------
--------------    회원 테이블 더미    --------------
--------------------------------------------------
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'admin', '1234', '관리자', '1234561234567', '관리자', '01012341234', 'admin@kh.or.kr', '서울시 영등포구', 'F', 'N', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/1.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user01', 'pass01', '펫시터1', '1234561234567', '펫시터1', '01011111111', 'user01@kh.or.kr', '서울시 영등포구', 'F', 'Y', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/2.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user02', 'pass02', '펫시터2', '1234561234567', '펫시터2', '01022222222', 'user02@kh.or.kr', '서울시 영등포구', 'F', 'Y', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/3.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user03', 'pass03', '펫시터3', '1234561234567', '펫시터3', '01033333333', 'user03@kh.or.kr', '서울시 영등포구', 'F', 'Y', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/4.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user04', 'pass04', '펫시터4', '1234561234567', '펫시터4', '01044444444', 'user04@kh.or.kr', '서울시 영등포구', 'F', 'Y', 'Y', '2023-05-01', 'Y', '/resources/upFiles/member_profiles/5.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user05', 'pass05', '펫시터5', '1234561234567', '펫시터5', '01055555555', 'user05@kh.or.kr', '서울시 영등포구', 'F', 'Y', 'Y', '2023-06-01', 'Y', '/resources/upFiles/member_profiles/6.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user06', 'pass06', '고객6', '1234561234567', '고객6', '01066666666', 'user06@kh.or.kr', '서울시 영등포구', 'F', 'N', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/7.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user07', 'pass07', '고객7', '1234561234567', '고객7', '01077777777', 'user07@kh.or.kr', '서울시 영등포구', 'F', 'N', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/8.png', SYSDATE);

--------------------------------------------------
-----------    펫시터 프로필 테이블 더미    -----------
--------------------------------------------------
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '안전하고 편안하게 돌봐주는 펫시팅','test', NULL, NULL, DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, 'test', 'test', NULL, NULL, DEFAULT, 3);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '안전하고 편안하게 돌봐주는 펫시팅','호박고구마, 힘드졍', '흡연자, 힘들당', '어디에 쓰는고', DEFAULT, 4);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '저는 4번 펫시터입니다.','어머니 호구마요?', '흡연자, 힘들당', '어디에 쓰는고', DEFAULT, 5);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '저는 5번 펫시터입니다.','아니 호박고구마 호!박!고!구!마!!!!', '흡연자, 힘들당', '어디에 쓰는고', DEFAULT, 6);

--------------------------------------------------
---------    펫시터 프로필 업데이트 더미    ---------
--------------------------------------------------
UPDATE PETSITTER
SET P_CONTENT = '반려견을 저에게 맡겨 주십쇼 어르신',
    P_SERVICE = '약물복용,목욕가능,매일산책',
    CARE_LIST = '주택 살아요, 아이 없어요'
WHERE USER_NO = 2;
UPDATE PETSITTER
SET P_TITLE = '내 아이를 돌보듯 따뜻하고 편안하게',
    P_CONTENT = '사랑과 정성으로 최선을 다해 보살펴드리겠습니다.',
    P_SERVICE = '모발관리,응급처치,매일산책,실내놀이',
    CARE_LIST = '아파트 살아요, 반려동물 있어요'
WHERE USER_NO = 3;

--------------------------------------------------
------    펫시터 프로필 첨부파일 테이블 더미    ------
--------------------------------------------------
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '그림이사진1.jpg',
         '그림이사진1.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         1);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '그림이사진2.jpg',
         '그림이사진2.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         2);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '개1.jpg',
         '개1.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         3);   
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '개2.jpg',
         '개2.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         4);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '개3.jpg',
         '개3.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         4);     
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '개4.jpg',
         '개4.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         5);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '개1.jpg',
         '개1.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         5);

--------------------------------------------------
-----------    공지사항 테이블 더미    -------------
--------------------------------------------------
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[공지] 펫시스터즈 안심보험 적용안내드립니다.', 
'안녕하세요 펫시스터즈입니다. 항상 펫시스터즈를 이용해주시는 보호자님들께 진심으로 감사드립니다. <br/><br/>
2023년 4월 1일부터 펫시스터즈에서 돌봄 의뢰 수행 도중 반려동물이 신체적 손해를 입을 경우에 관련 배상비용을 지원하는 펫시스터즈 안심보험
(한화손해보험 전문인배상책임보험)에 가입되었음을 안내드립니다. <br/><br/>
펫시스터즈 안심보험은 업계 최초의 펫시터 보험으로 펫시스터즈에서 매칭되는 모든 돌봄 의뢰에 대해 적용되며,
돌봄 대상으로 등록된 반려동물이 입은 신체적 손해를 보장합니다. <br/><br/>
보험 가입 비용은 전액 펫시스터즈에서 부담하며, 돌봄 비용은 기존과 동일합니다. <br/><br/>
앞으로도 더욱 안전한 반려동물 케어 서비스를 제공할 수 있도록 노력하겠습니다. <br/><br/>
감사합니다.', '2023-06-01', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[안내] 6월 고객센터 휴무 일정 안내',
'안녕하세요 펫시스터즈입니다. <br/> 항상 펫시스터즈를 이용해주시는 보호자님들께 진심으로 감사드립니다. <br/><br/>
2023년 6월 고객센터 휴무 일정 안내 드립니다. <br/>
보호자님의 양해 부탁드리며, 아래 내용 확인하셔서 이용에 불편 없으시기를 바랍니다. <br/><br/>
● 현충일 : 2023. 06. 06(화) 고객센터 휴무 <br/><br/>
문의글에 대한 답변은 6월 7일(수)부터 순차적으로 제공됩니다. <br/><br/>
감사합니다.', '2023-06-05', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[정보] 오늘은 반려동물의 날',
'오늘은 반려동물의 날이에요. 이름부터 귀엽지 않나요? <br/> 안 귀엽다고? 그럴리가 없는데... <br/><br/>', '2023-06-06', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[기획성] 댕댕이의 여름나기',
'안녕하세요 펫시스터즈입니다. 항상 펫시스터즈를 이용해주시는 보호자님들께 진심으로 감사드립니다. <br/>
다가오는 무더운 여름을 대비해 반려인과 반려견 모두 즐겁게 여름철 산책을 즐기는 방법을 준비했습니다. <br/><br/>
해충 조심! <br/>
겨울철보다 관련 예방 접종이나 기생충 예방약 복용에 신경써주세요. <br/><br/>
뜨거운 아스팔트 조심! <br/>
아스팔트는 낮에 흡수한 열을 해가 진 이후까지 유지합니다. <br/>
뜨겁게 달궈진 아스팔트를 반려견이 발로 밟는다면 화상을 입을 수 있습니다. <br/>
신발을 신기거나 반려인이 먼저 온도를 체크 후 밟도록 유도해주세요. <br/><br/>
여름철에는 고온 다습하여 피부병에 걸리기 쉽습니다. 산책을 다녀와서 목욕 후에는 반드시 완벽하게 수분을 말려주세요. <br/>
더운 여름, 건강하게 즐기며 지낼 수 있도록 보호자님들이 잘 챙기시면 좋겠습니다.', '2023-06-10', 0, 'Y');

--------------------------------------------------
------------    1:1문의 테이블 더미    ------------
--------------------------------------------------
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '펫시팅 이후에 없던 상처가 생겼어요'
           , '제일 최근에 맡긴 펫시팅 이후로 안 보이던 상처를 발견했어요. <br/>
             펫시터 분께 전달받은 내용은 없었고요. <br/>
             병원에 가볼 정도는 아니지만 케어하시면서 알아채지 못할 정도는 아니었을 것 같은데 무슨 일이었는지 좀 알고 싶어요.'
           , '2023-06-07'
           , 'Y'
           , 7);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '예약 일정을 하루씩 미룰 수 있을까요?'
           , '일정이 바뀌어서 체크인, 체크아웃 날짜를 하루씩 미루고 싶은데요. <br/>
             혹시 예약을 취소하지 않고 펫시터 재량으로 날짜만 미룰 수 있을까요?'
           , '2023-06-14'
           , 'Y'
           , 7);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '아이 하네스 줄이 바뀐 것 같아요.'
           , '펫시팅 맡기면서 같이 드렸던 하네스줄이 있었는데, 원래 쓰던 게 아니라서요. <br/>
             두 개 색깔이 같아서 헷갈리신 것 같은데 펫시터 분께 개인적으로 연락 드릴 방법이 있을까요?'
           , SYSDATE
           , 'Y'
           , 7);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '펫시팅 이후에 없던 상처가 생겼어요'
           , '제일 최근에 맡긴 펫시팅 이후로 안 보이던 상처를 발견했어요. <br/>
             펫시터 분께 전달받은 내용은 없었고요. <br/>
             병원에 가볼 정도는 아니지만 케어하시면서 알아채지 못할 정도는 아니었을 것 같은데 무슨 일이었는지 좀 알고 싶어요.'
           , '2023-06-07'
           , 'Y'
           , 8);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '예약 일정을 하루씩 미룰 수 있을까요?'
           , '일정이 바뀌어서 체크인, 체크아웃 날짜를 하루씩 미루고 싶은데요. <br/>
             혹시 예약을 취소하지 않고 펫시터 재량으로 날짜만 미룰 수 있을까요?'
           , '2023-06-14'
           , 'Y'
           , 8);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '아이 하네스 줄이 바뀐 것 같아요.'
           , '펫시팅 맡기면서 같이 드렸던 하네스줄이 있었는데, 원래 쓰던 게 아니라서요. <br/>
             두 개 색깔이 같아서 헷갈리신 것 같은데 펫시터 분께 개인적으로 연락 드릴 방법이 있을까요?'
           , SYSDATE
           , 'Y'
           , 8);
 
--------------------------------------------------
------------    펫시터찜 테이블 더미    ------------
--------------------------------------------------
INSERT INTO P_LIKE
VALUES (3, 1);
INSERT INTO P_LIKE
VALUES (1, 1);
INSERT INTO P_LIKE
VALUES (2, 1);
INSERT INTO P_LIKE
VALUES (4, 1);

--------------------------------------------------
-------------    예약 테이블 더미    --------------
--------------------------------------------------
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '우리집 개는 물어요 잘해보세요',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-05-21',
         '2023-05-24',
         '2023-05-02',
         '멍멍',
         'Y',
         2,
         5);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-10',
         '2023-06-01',
         '뭉뭉',
         'Y',
         2,
         1);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '우리집 개는 물어요 잘해보세요',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '우리집 개는 물어요 잘해보세요',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '우리집 개는 물어요 잘해보세요',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '우리집 개는 물어요 잘해보세요',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '우리집 개는 물어요 잘해보세요',
         'Y',
         2,
         4);
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-01',
         '2023-06-20',
         '2023-05-29',
         '메세지입니다',
         'Y',
         3,
         4);        
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-10',
         '2023-06-11',
         '2023-05-30',
         '여기부터시작',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-08',
         '2023-06-09',
         '2023-06-01',
         '헷갈린다',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-15',
         '2023-06-29',
         '2023-06-03',
         '벌써어지러워',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-01',
         '2023-06-30',
         '2023-06-04',
         '몇개남았지',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-11',
         '2023-06-29',
         '2023-06-05',
         '어디가끝이야',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-29',
         '2023-07-01',
         '2023-06-07',
         '이제그만제발',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-10',
         '2023-06-20',
         '2023-06-08',
         '도움!',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-07-01',
         '2023-07-20',
         '2023-06-10',
         '시마이데쓰',
         'Y',
         3,
         4);           
         
--------------------------------------------------
-----------    돌봄일지 테이블 더미    -------------
--------------------------------------------------
INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', SYSDATE, 'Y', 1);	 	    	

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', SYSDATE, 'Y', 4); 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', SYSDATE, 'Y', 5);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', SYSDATE, 'Y', 6);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', SYSDATE, 'Y', 7);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', SYSDATE, 'Y', 8);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', SYSDATE, 'Y', 17);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', SYSDATE, 'Y', 16);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', SYSDATE, 'Y', 15);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', SYSDATE, 'Y', 14);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', SYSDATE, 'Y', 13);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', '2023-06-12', 'Y', 12);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', '2023-06-11', 'Y', 11);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', '2023-06-10', 'Y', 10);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '돌봄테스트1', '돌봄테스트내용1', '2023-06-10', 'Y', 9);	 


--------------------------------------------------
---------    돌봄일지 파일 테이블 더미    -----------
--------------------------------------------------
    INSERT INTO J_ATTACHMENT (FILE_NO, 
                              ORIGIN_NAME, 
                              CHANGE_NAME, 
                              FILE_PATH, 
                              CREATE_DATE,
                              STATUS, 
                              FILE_LEVEL, 
                              REF_JNO)
                        VALUES(SEQ_J_ATTACHMENT.NEXTVAL, 
                        '스크린샷 2023-03-16 100627.png', 
                        '2023061309592568786.png', 
                        'resources/upFiles/care_upfiles/', 
                        SYSDATE, 
                        'Y', 
                        1, 
                        SEQ_JOURNAL.CURRVAL);
         
--------------------------------------------------
---------------    후기 테이블 더미    --------------
--------------------------------------------------
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '정말 넘모 조와용', '어쩜 이리 섬세하신지..홍홍',
    SYSDATE, '만족하셨다니 기분이 좋네요', SYSDATE, 'Y', NULL, 1);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '정말 넘모 조와용', '어쩜 이리 섬세하신지..홍홍',
    SYSDATE, '만족하셨다니 기분이 좋네요', SYSDATE, 'Y', NULL, 2);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '정말 넘모 조와용', '어쩜 이리 섬세하신지..홍홍',
    SYSDATE, '만족하셨다니 기분이 좋네요', SYSDATE, 'Y', NULL, 3);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '정말 넘모 조와용', '어쩜 이리 섬세하신지..홍홍',
    SYSDATE, '만족하셨다니 기분이 좋네요', SYSDATE, 'Y', NULL, 4);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '정말 넘모 조와용', '어쩜 이리 섬세하신지..홍홍',
    SYSDATE, '만족하셨다니 기분이 좋네요', SYSDATE, 'Y', NULL, 5);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '정말 넘모 조와용', '어쩜 이리 섬세하신지..홍홍',
    SYSDATE, '만족하셨다니 기분이 좋네요', SYSDATE, 'Y', NULL, 6);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '정말 넘모 조와용', '어쩜 이리 섬세하신지..홍홍',
    SYSDATE, '만족하셨다니 기분이 좋네요', SYSDATE, 'Y', NULL, 7);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '정말 넘모 조와용', '어쩜 이리 섬세하신지..홍홍',
    SYSDATE, '만족하셨다니 기분이 좋네요', SYSDATE, 'Y', NULL, 8);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '정말 넘모 조와용', '어쩜 이리 섬세하신지..홍홍',
    SYSDATE, '만족하셨다니 기분이 좋네요', SYSDATE, 'Y', NULL, 9);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '정말 넘모 조와용', '어쩜 이리 섬세하신지..홍홍',
    SYSDATE, '만족하셨다니 기분이 좋네요', SYSDATE, 'Y', NULL, 10);
       
       
--------------------------------------------------
-------------    강아지 테이블 더미    ---------------
--------------------------------------------------
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '초롱이',
       'M',
       '셰퍼드',
       '20/04/12',
       12,
       'N',
       NULL,
       'resources/upFiles/dog_profiles/로이.jpg',
       'Y',
       2);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '나롱이',
       'F',
       '말티즈',
       '19/09/16',
       18,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/로이.jpg',
       'Y',
       3);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '쪼꼬미',
       'F',
       '말라뮤트',
       '22/12/01',
       21,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/로이.jpg',
       'Y',
       4); 
       
--------------------------------------------------
--------------    결제 테이블 더미    --------------
--------------------------------------------------
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-02-01',
       '일주일 데슝',
       165000,
       DEFAULT,
       1);

INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-03-06',
       '강아지쓰',
       300000,
       DEFAULT,
       2);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-03-27',
       '갱얼쥐',
       550000,
       DEFAULT,
       3);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-04-15',
       '많다',
       55000,
       DEFAULT,
       4);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-04-20',
       '넘많어',
       110000,
       DEFAULT,
       5);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-05-15',
       '하루다임마',
       55000,
       DEFAULT,
       6);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '씨다씨',
       165000,
       DEFAULT,
       7);       
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '팔븐째',
       220000,
       DEFAULT,
       8);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '구번째',
       55000,
       DEFAULT,
       9); 
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '마지막',
       1100000,
       DEFAULT,
       10);       
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '이게뭐냔말입니다',
       110000,
       DEFAULT,
       11);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '이게맞나',
       550000,
       DEFAULT,
       12);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '모르겄다',
       55000,
       DEFAULT,
       13);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '아몰랑',
       165000,
       DEFAULT,
       14);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '힣홓',
       1100000,
       DEFAULT,
       15);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '흐아두우자',
       1100000,
       DEFAULT,
       16);         
           
--------------------------------------------------
--------------    채팅방 테이블 더미    --------------
--------------------------------------------------
INSERT INTO CHAT_ROOM VALUES(SEQ_CHAT_ROOM.NEXTVAL,1,'아발',null, 'N', 'N', 2,'김제니', '/resources/img/chat/김제니.png', 'Y', 'Y');
INSERT INTO CHAT_ROOM VALUES(SEQ_CHAT_ROOM.NEXTVAL,3,'소연','/resources/img/chat/하두리.png', 'N', 'N', 1,'아발', '', 'Y', 'Y');

--------------------------------------------------
--------------    메세지 테이블 더미    --------------
--------------------------------------------------
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '메세지내용1', DEFAULT, 1, 1, DEFAULT);
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '메세지내용2', DEFAULT, 1, 1, DEFAULT);
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '메세지내용3', DEFAULT, 1, 1, DEFAULT);

----------------------------------------------------------------
--------------    커뮤니티 (일반게시판) 테이블 더미    --------------
----------------------------------------------------------------
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목1', '강아지산책 다녀왔어요!!', SYSDATE, DEFAULT, DEFAULT, 1, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목2', '강아지산책 간식추천이요!!', SYSDATE, DEFAULT, DEFAULT, 2, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목3', '강아지 입양했어요!!', SYSDATE, DEFAULT, DEFAULT, 3, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목4', '강아지 가족이 생겼어요!!', SYSDATE, DEFAULT, DEFAULT, 4, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목5', '돌돌이랑 산책 다녀왔어요!!', SYSDATE, DEFAULT, DEFAULT, 5, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목6', '강아지 간식 만들어봐요!!', SYSDATE, DEFAULT, DEFAULT, 6, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목7', '강아지 건강식 자랑해요!!', SYSDATE, DEFAULT, DEFAULT, 7, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목8', '우리 강아지들이 좋아하는 간식들 추천!!', SYSDATE, DEFAULT, DEFAULT, 8, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목9', '오늘도 즐거운하루!!', SYSDATE, DEFAULT, DEFAULT, 1, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목10', '비오는 날은 강아지와 함께!!', SYSDATE, DEFAULT, DEFAULT, 2, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목11', '새로운 가족이 생겼어요!!', SYSDATE, DEFAULT, DEFAULT, 8, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목12', '강아지와 동거하는 고양이!!', SYSDATE, DEFAULT, DEFAULT, 7, 1, 1);

----------------------------------------------------------------
--------------    커뮤니티 (사진게시판) 테이블 더미    --------------
----------------------------------------------------------------
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목1', '비오는날 강아지 사진!!', SYSDATE, DEFAULT, DEFAULT, 5, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목2', '강아지와 나의 추억!!', SYSDATE, DEFAULT, DEFAULT, 6, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목3', '등산셀카 자랑해요!!', SYSDATE, DEFAULT, DEFAULT, 7, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목4', '강아지 증명사진 찍었어요!!', SYSDATE, DEFAULT, DEFAULT, 8, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목5', '강아지 산책모임에서 인증샷!!', SYSDATE, DEFAULT, DEFAULT, 3, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목6', '여름에 강아지 간식으로 수박추천!!', SYSDATE, DEFAULT, DEFAULT, 6, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목7', '우리 강아지 애기사진!!', SYSDATE, DEFAULT, DEFAULT, 7, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목8', '우리 강아지들이 좋아하는 간식들 추천!!', SYSDATE, DEFAULT, DEFAULT, 4, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목9', '오늘도 즐거운하루!!', SYSDATE, DEFAULT, DEFAULT, 8, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목10', '고양이와 강아지!!', SYSDATE, DEFAULT, DEFAULT, 2, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목11', '강아지 영양식 인증샷!!', SYSDATE, DEFAULT, DEFAULT, 3, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '제목12', '여름에 강아지 보양식 만들었어요!!', SYSDATE, DEFAULT, DEFAULT, 1, 2, 1);


--------------------------------------------------
-----------------    커밋구문    ------------------
--------------------------------------------------
         
 COMMIT;