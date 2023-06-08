DROP TABLE MESSAGE;
DROP TABLE CHAT_ROOM;
DROP TABLE J_ATTACHMENT;
DROP TABLE JOURNAL;
DROP TABLE REVIEW;
DROP TABLE PAYMENT;
DROP TABLE RESERVATION;
DROP TABLE P_LIKE;
DROP TABLE IMPOSSIBLE_DATE;
DROP TABLE SUPPORT;
DROP TABLE P_ATTACHMENT;
DROP TABLE PETSITTER;
DROP TABLE B_ATTACHMENT;
DROP TABLE R_LIKE;
DROP TABLE REPLY;
DROP TABLE B_LIKE;
DROP TABLE BOARD;
DROP TABLE DOG;
DROP TABLE NOTICE;
DROP TABLE CS_REPLY;
DROP TABLE INQUIRY;
DROP TABLE MEMBER;

DROP SEQUENCE SEQ_MEMBER;            -- 회원 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_INQUIRY;               -- 1:1문의 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_CS_REPLY;               -- 1:1문의 댓글 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_NOTICE;            -- 공지사항 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_DOG;               -- 강아지 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_BOARD;             -- 게시글 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_REPLY;             -- 게시판 댓글 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_B_ATTACHMENT;      -- 첨부파일 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_PETSITTER;         -- 펫시터 프로필 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_P_ATTACHMENT;      -- 펫시터 프로필 첨부파일 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_SUPPORT;           -- 펫시터지원서 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_RESERVATION;       -- 예약 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_REVIEW;            -- 후기 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_JOURNAL;           -- 돌봄일지 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_J_ATTACHMENT;      -- 돌봄일지 첨부파일 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_CHAT_ROOM;         -- 채팅방 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_MESSAGE;           -- 채팅메세지 번호를 발생시킬 시퀀스
DROP SEQUENCE SEQ_PAYMENT;           -- 결제 번호를 발생시킬 시퀀스

CREATE SEQUENCE SEQ_MEMBER NOCACHE;
CREATE SEQUENCE SEQ_INQUIRY NOCACHE;
CREATE SEQUENCE SEQ_CS_REPLY NOCACHE;
CREATE SEQUENCE SEQ_NOTICE NOCACHE;
CREATE SEQUENCE SEQ_DOG NOCACHE;
CREATE SEQUENCE SEQ_BOARD NOCACHE;
CREATE SEQUENCE SEQ_REPLY NOCACHE;
CREATE SEQUENCE SEQ_B_ATTACHMENT NOCACHE;
CREATE SEQUENCE SEQ_PETSITTER NOCACHE;
CREATE SEQUENCE SEQ_P_ATTACHMENT NOCACHE;
CREATE SEQUENCE SEQ_SUPPORT NOCACHE;
CREATE SEQUENCE SEQ_RESERVATION NOCACHE;
CREATE SEQUENCE SEQ_REVIEW NOCACHE;
CREATE SEQUENCE SEQ_JOURNAL NOCACHE;
CREATE SEQUENCE SEQ_J_ATTACHMENT NOCACHE;
CREATE SEQUENCE SEQ_CHAT_ROOM NOCACHE;
CREATE SEQUENCE SEQ_MESSAGE NOCACHE;
CREATE SEQUENCE SEQ_PAYMENT NOCACHE;

--------------------------------------------------
----------------    회원 테이블    -----------------
--------------------------------------------------
CREATE TABLE MEMBER (
    USER_NO NUMBER PRIMARY KEY,
	USER_ID	VARCHAR2(10) NOT NULL,
	USER_PWD VARCHAR2(200) NOT NULL,
	USER_NAME VARCHAR2(10) NOT NULL,
	USER_SSN VARCHAR2(13) NOT NULL,
	USER_NICKNAME VARCHAR2(30) NOT NULL,
	PHONE VARCHAR2(15) NOT NULL,
	EMAIL VARCHAR2(30) NOT NULL,
	ADDRESS VARCHAR2(150) NOT NULL,
	GENDER VARCHAR2(1) NOT NULL,
	SITTER_STATUS VARCHAR2(1) DEFAULT 'N' CHECK (SITTER_STATUS IN('Y', 'N')),
	CA_STATUS VARCHAR2(1) DEFAULT 'N' CHECK (CA_STATUS IN('Y', 'N')),
	CA_DATE DATE,
	STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	FILE_PATH VARCHAR2(1000),
	ENROLL_DATE	DATE DEFAULT SYSDATE
);

COMMENT ON COLUMN MEMBER.USER_NO IS '회원번호';
COMMENT ON COLUMN MEMBER.USER_ID IS '회원아이디';
COMMENT ON COLUMN MEMBER.USER_PWD IS '회원비밀번호';
COMMENT ON COLUMN MEMBER.USER_NAME IS '회원이름';
COMMENT ON COLUMN MEMBER.USER_SSN IS '주민번호';
COMMENT ON COLUMN MEMBER.USER_NICKNAME IS '회원닉네임';
COMMENT ON COLUMN MEMBER.PHONE IS '핸드폰번호';
COMMENT ON COLUMN MEMBER.EMAIL IS '이메일';
COMMENT ON COLUMN MEMBER.ADDRESS IS '주소';
COMMENT ON COLUMN MEMBER.GENDER IS '남자=M / 여자=F';
COMMENT ON COLUMN MEMBER.SITTER_STATUS IS '펫시터=Y / 일반사용자=N';
COMMENT ON COLUMN MEMBER.CA_STATUS IS '펫시터자격증여부 유=Y / 무=N';
COMMENT ON COLUMN MEMBER.CA_DATE IS '자격증 취득날짜';
COMMENT ON COLUMN MEMBER.STATUS IS '회원유지=Y / 탈퇴=N';
COMMENT ON COLUMN MEMBER.FILE_PATH IS '파일경로';
COMMENT ON COLUMN MEMBER.ENROLL_DATE IS '회원가입일';

--------------------------------------------------
---------------    1:1문의 테이블    ----------------
--------------------------------------------------
CREATE TABLE INQUIRY (
    I_NO NUMBER PRIMARY KEY,
    I_TITLE VARCHAR2(100) NOT NULL,
    I_CONTENT VARCHAR2(2000) NOT NULL,
    CREATE_DATE DATE DEFAULT SYSDATE,
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    FILE_PATH VARCHAR2(1000),
    USER_NO NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO)
);

COMMENT ON COLUMN INQUIRY.I_NO IS '문의번호';
COMMENT ON COLUMN INQUIRY.I_TITLE IS '문의제목';
COMMENT ON COLUMN INQUIRY.I_CONTENT IS '문의내용';
COMMENT ON COLUMN INQUIRY.CREATE_DATE IS '작성일';
COMMENT ON COLUMN INQUIRY.STATUS IS '삭제여부 유지중=Y / 삭제됨=N';
COMMENT ON COLUMN INQUIRY.FILE_PATH IS '사진경로';
COMMENT ON COLUMN INQUIRY.USER_NO IS '회원번호';

--------------------------------------------------
-----------    1:1 게시판 댓글 테이블    -----------
--------------------------------------------------
CREATE TABLE CS_REPLY (
	REP_NO NUMBER PRIMARY KEY,
	REP_CONTENT VARCHAR2(2000) NOT NULL,
    CREATE_DATE DATE DEFAULT SYSDATE,
	STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	USER_NO NUMBER NOT NULL,
	REF_INO NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO),
    FOREIGN KEY (REF_INO) REFERENCES INQUIRY (I_NO)
);

COMMENT ON COLUMN CS_REPLY.REP_NO IS '댓글번호';
COMMENT ON COLUMN CS_REPLY.REP_CONTENT IS '댓글내용';
COMMENT ON COLUMN CS_REPLY.CREATE_DATE IS '댓글작성일';
COMMENT ON COLUMN CS_REPLY.STATUS IS '삭제여부 유지중=Y / 삭제됨=N';
COMMENT ON COLUMN CS_REPLY.USER_NO IS '회원번호';
COMMENT ON COLUMN CS_REPLY.REF_INO IS '참조1:1게시글번호';

--------------------------------------------------
----------------    공지사항 테이블    ---------------
--------------------------------------------------
CREATE TABLE NOTICE (
	NOTICE_NO NUMBER PRIMARY KEY,
	NOTICE_TITLE VARCHAR2(100) NOT NULL,
	NOTICE_CONTENT VARCHAR2(2000) NOT NULL,
	CREATE_DATE DATE DEFAULT SYSDATE,
	COUNT NUMBER DEFAULT 0,
	STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N'))
);

COMMENT ON COLUMN NOTICE.NOTICE_NO IS '공지사항번호';
COMMENT ON COLUMN NOTICE.NOTICE_TITLE IS '공지사항제목';
COMMENT ON COLUMN NOTICE.NOTICE_CONTENT IS '공지사항내용';
COMMENT ON COLUMN NOTICE.CREATE_DATE IS '작성일';
COMMENT ON COLUMN NOTICE.COUNT IS '조회수';
COMMENT ON COLUMN NOTICE.STATUS IS '삭제여부 유지중=Y / 삭제됨=N';

--------------------------------------------------
---------------    강아지 테이블    -----------------
--------------------------------------------------
CREATE TABLE DOG (
	DOG_NO NUMBER PRIMARY KEY,
	DOG_NAME VARCHAR2(20) NOT NULL,
	DOG_GENDER VARCHAR2(1) NOT NULL,
	DOG_BREED VARCHAR2(20) NOT NULL,
	DOG_BIRTHDAY DATE NOT NULL,
	DOG_WEIGHT NUMBER NOT NULL,
	NEUTRALIZATION_STATUS VARCHAR2(1) CHECK (NEUTRALIZATION_STATUS IN('Y', 'N')) NOT NULL,
	DOG_NOTE VARCHAR2(1000),
	FILE_PATH VARCHAR2(1000),
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	USER_NO NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO)
);

COMMENT ON COLUMN DOG.DOG_NO IS '강아지번호';
COMMENT ON COLUMN DOG.DOG_NAME IS '강아지이름';
COMMENT ON COLUMN DOG.DOG_GENDER IS '강아지성별';
COMMENT ON COLUMN DOG.DOG_BREED IS '강아지종류';
COMMENT ON COLUMN DOG.DOG_BIRTHDAY IS '강아지태어난날';
COMMENT ON COLUMN DOG.DOG_WEIGHT IS '강아지몸무게';
COMMENT ON COLUMN DOG.NEUTRALIZATION_STATUS IS '중성화함=Y / 안함=N';
COMMENT ON COLUMN DOG.DOG_NOTE IS '돌봄시참고사항';
COMMENT ON COLUMN DOG.FILE_PATH IS '파일경로';
COMMENT ON COLUMN DOG.STATUS IS '강아지등록상태 유지중=Y / 삭제됨=N';
COMMENT ON COLUMN DOG.USER_NO IS '강아지주인';

--------------------------------------------------
-------------    강아지 게시판 테이블    -------------
--------------------------------------------------
CREATE TABLE BOARD (
	B_NO NUMBER PRIMARY KEY,
	B_TITLE VARCHAR2(250) NOT NULL,
	B_CONTENT VARCHAR2(2000) NOT NULL,
	CREATE_DATE	DATE DEFAULT SYSDATE,
	STATUS CHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	COUNT NUMBER DEFAULT 0,
	USER_NO	NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO)
);

COMMENT ON COLUMN BOARD.B_NO IS '게시글번호';
COMMENT ON COLUMN BOARD.B_TITLE IS '글제목';
COMMENT ON COLUMN BOARD.B_CONTENT IS '글내용';
COMMENT ON COLUMN BOARD.CREATE_DATE IS '작성날짜';
COMMENT ON COLUMN BOARD.STATUS IS '삭제여부 유지중=Y / 삭제됨=N';
COMMENT ON COLUMN BOARD.COUNT IS '조회수';
COMMENT ON COLUMN BOARD.USER_NO IS '회원번호';

--------------------------------------------------
-------------    게시글 좋아요 테이블    -------------
--------------------------------------------------
CREATE TABLE B_LIKE (
	USER_NO NUMBER NOT NULL,
	REF_BNO NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO),
    FOREIGN KEY (REF_BNO) REFERENCES BOARD (B_NO)
);

COMMENT ON COLUMN B_LIKE.USER_NO IS '회원번호';
COMMENT ON COLUMN B_LIKE.REF_BNO IS '참조게시글번호';

--------------------------------------------------
-----------    강아지 게시판 댓글 테이블    -----------
--------------------------------------------------
CREATE TABLE REPLY (
	REP_NO NUMBER PRIMARY KEY,
	REP_CONTENT VARCHAR2(2000) NOT NULL,
    CREATE_DATE DATE DEFAULT SYSDATE,
	STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	USER_NO NUMBER NOT NULL,
	REF_BNO NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO),
    FOREIGN KEY (REF_BNO) REFERENCES BOARD (B_NO)
);

COMMENT ON COLUMN REPLY.REP_NO IS '댓글번호';
COMMENT ON COLUMN REPLY.REP_CONTENT IS '댓글내용';
COMMENT ON COLUMN REPLY.CREATE_DATE IS '댓글작성일';
COMMENT ON COLUMN REPLY.STATUS IS '삭제여부 유지중=Y / 삭제됨=N';
COMMENT ON COLUMN REPLY.USER_NO IS '회원번호';
COMMENT ON COLUMN REPLY.REF_BNO IS '참조게시글번호';

--------------------------------------------------
-------------    댓글 좋아요 테이블    ---------------
--------------------------------------------------
CREATE TABLE R_LIKE (
	USER_NO NUMBER NOT NULL,
	REF_REPNO NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO),
    FOREIGN KEY (REF_REPNO) REFERENCES REPLY (REP_NO)
);

COMMENT ON COLUMN R_LIKE.USER_NO IS '회원번호';
COMMENT ON COLUMN R_LIKE.REF_REPNO IS '참조댓글번호';

--------------------------------------------------
---------    강아지 게시판 첨부파일 테이블    ----------
--------------------------------------------------
CREATE TABLE B_ATTACHMENT (
	FILE_NO NUMBER PRIMARY KEY,
	ORIGIN_NAME VARCHAR2(100) NOT NULL,
	CHANGE_NAME VARCHAR2(100) NOT NULL,
	FILE_PATH VARCHAR2(1000) NOT NULL,
	CREATE_DATE DATE DEFAULT SYSDATE,
	STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	FILE_LEVEL NUMBER,
	REF_BNO NUMBER NOT NULL,
    FOREIGN KEY (REF_BNO) REFERENCES BOARD (B_NO)
);

COMMENT ON COLUMN B_ATTACHMENT.FILE_NO IS '파일번호';
COMMENT ON COLUMN B_ATTACHMENT.ORIGIN_NAME IS '원본파일명';
COMMENT ON COLUMN B_ATTACHMENT.CHANGE_NAME IS '수정파일명';
COMMENT ON COLUMN B_ATTACHMENT.FILE_PATH IS '파일경로';
COMMENT ON COLUMN B_ATTACHMENT.CREATE_DATE IS '파일업로드날짜';
COMMENT ON COLUMN B_ATTACHMENT.STATUS IS '파일삭제여부 유지중=Y / 삭제됨=N';
COMMENT ON COLUMN B_ATTACHMENT.FILE_LEVEL IS '파일레벨';
COMMENT ON COLUMN B_ATTACHMENT.REF_BNO IS '참조게시글번호';

--------------------------------------------------
-------------    펫시터 프로필 테이블    -------------
--------------------------------------------------
CREATE TABLE PETSITTER (
	P_NO NUMBER PRIMARY KEY,
	P_TITLE	VARCHAR2(250) NOT NULL,
	P_CONTENT VARCHAR2(2000) NOT NULL,
	P_SERVICE VARCHAR2(1000),
	CARE_LIST VARCHAR2(1000),
    P_MODE VARCHAR2(1) DEFAULT 'Y' CHECK (P_MODE IN('Y', 'N')),
	USER_NO NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO),
    CONSTRAINT UNIQUE_USER_NO UNIQUE (USER_NO)
);

COMMENT ON COLUMN PETSITTER.P_NO IS '펫시터프로필번호';
COMMENT ON COLUMN PETSITTER.P_TITLE IS '펫시터프로필제목';
COMMENT ON COLUMN PETSITTER.P_CONTENT IS '펫시터프로필내용';
COMMENT ON COLUMN PETSITTER.P_SERVICE IS '이용가능서비스';
COMMENT ON COLUMN PETSITTER.CARE_LIST IS '돌봄환경';
COMMENT ON COLUMN PETSITTER.P_MODE IS '펫시터모드 ON=Y / OFF=N';
COMMENT ON COLUMN PETSITTER.USER_NO IS '회원번호';

--------------------------------------------------
---------    펫시터 프로필 첨부파일 테이블    ----------
--------------------------------------------------
CREATE TABLE P_ATTACHMENT (
	FILE_NO	NUMBER PRIMARY KEY,
    ORIGIN_NAME	VARCHAR2(100) NOT NULL,
	CHANGE_NAME	VARCHAR2(100) NOT NULL,
	FILE_PATH VARCHAR2(1000) NOT NULL,
	CREATE_DATE	DATE DEFAULT SYSDATE,
	STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	FILE_LEVEL NUMBER,
	REF_PNO NUMBER NOT NULL,
    FOREIGN KEY (REF_PNO) REFERENCES PETSITTER (P_NO)
);

COMMENT ON COLUMN P_ATTACHMENT.FILE_NO IS '파일번호';
COMMENT ON COLUMN P_ATTACHMENT.ORIGIN_NAME IS '원본파일명';
COMMENT ON COLUMN P_ATTACHMENT.CHANGE_NAME IS '수정파일명';
COMMENT ON COLUMN P_ATTACHMENT.FILE_PATH IS '파일경로';
COMMENT ON COLUMN P_ATTACHMENT.CREATE_DATE IS '파일업로드날짜';
COMMENT ON COLUMN P_ATTACHMENT.STATUS IS '파일삭제여부 유지중=Y / 삭제됨=N';
COMMENT ON COLUMN P_ATTACHMENT.FILE_LEVEL IS '파일레벨';
COMMENT ON COLUMN P_ATTACHMENT.REF_PNO IS '참조펫시터프로필번호';

--------------------------------------------------
--------------    펫시터지원 테이블    ---------------
--------------------------------------------------
CREATE TABLE SUPPORT (
	SUPPORT_NO NUMBER PRIMARY KEY,
	ADDRESS VARCHAR2(150) NOT NULL,
	PYEONG NUMBER NOT NULL,
	SMOKE VARCHAR2(1) NOT NULL CHECK (SMOKE IN('Y', 'N')),
	MY_EXPERIENCE VARCHAR2(1) NOT NULL CHECK (MY_EXPERIENCE IN('Y', 'N')),
	OTHER_EXPERIENCE VARCHAR2(2000) NOT NULL,
	ETC_EXPERIENCE VARCHAR2(2000) NOT NULL,
	PETSITTER_EXPERIENCE VARCHAR2(1) NOT NULL CHECK (PETSITTER_EXPERIENCE IN('Y', 'N')),
	USER_NO	NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO)
);

COMMENT ON COLUMN SUPPORT.SUPPORT_NO IS '지원번호';
COMMENT ON COLUMN SUPPORT.ADDRESS IS '거주지주소';
COMMENT ON COLUMN SUPPORT.PYEONG IS '거주지유형';
COMMENT ON COLUMN SUPPORT.SMOKE IS '흡연여부';
COMMENT ON COLUMN SUPPORT.MY_EXPERIENCE IS '강아지반려경험유무';
COMMENT ON COLUMN SUPPORT.OTHER_EXPERIENCE IS '타인동물반려경험내용';
COMMENT ON COLUMN SUPPORT.ETC_EXPERIENCE IS '그외반려경험내용';
COMMENT ON COLUMN SUPPORT.PETSITTER_EXPERIENCE IS '펫시터활동경험유무';
COMMENT ON COLUMN SUPPORT.USER_NO IS '회원번호';

--------------------------------------------------
-------------    예약불가능날짜 테이블    -------------
--------------------------------------------------
CREATE TABLE IMPOSSIBLE_DATE (
	I_DATE	DATE PRIMARY KEY,
	REF_PNO NUMBER NOT NULL,
    FOREIGN KEY (REF_PNO) REFERENCES PETSITTER (P_NO)
);

COMMENT ON COLUMN IMPOSSIBLE_DATE.I_DATE IS '예약불가능날짜';
COMMENT ON COLUMN IMPOSSIBLE_DATE.REF_PNO IS '참조펫시터프로필번호';

--------------------------------------------------
---------------    펫시터찜 테이블    ---------------
--------------------------------------------------
CREATE TABLE P_LIKE (
	USER_NO	NUMBER NOT NULL,
	REF_PNO	NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO),
    FOREIGN KEY (REF_PNO) REFERENCES PETSITTER (P_NO)
);

COMMENT ON COLUMN P_LIKE.USER_NO IS '회원번호';
COMMENT ON COLUMN P_LIKE.REF_PNO IS '참조펫시터프로필번호';

--------------------------------------------------
-----------------    예약 테이블    ----------------
--------------------------------------------------
CREATE TABLE RESERVATION (
	RES_NO NUMBER PRIMARY KEY,
	START_DATE DATE NOT NULL,
	END_DATE DATE NOT NULL,
	REGISTER_DATE DATE DEFAULT SYSDATE,
	CONTENT	VARCHAR2(2000),
	STATUS VARCHAR2(1) DEFAULT 'N' CHECK (STATUS IN('Y', 'N')),
	USER_NO	NUMBER NOT NULL,
	REF_PNO	NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO),
    FOREIGN KEY (REF_PNO) REFERENCES PETSITTER (P_NO)
);

COMMENT ON COLUMN RESERVATION.RES_NO IS '예약번호';
COMMENT ON COLUMN RESERVATION.START_DATE IS '시작일시';
COMMENT ON COLUMN RESERVATION.END_DATE IS '종료일시';
COMMENT ON COLUMN RESERVATION.REGISTER_DATE IS '등록일시';
COMMENT ON COLUMN RESERVATION.CONTENT IS '특이사항';
COMMENT ON COLUMN RESERVATION.STATUS IS '최초예약시=N / 펫시터승인시=Y / 예약취소시=N';
COMMENT ON COLUMN RESERVATION.USER_NO IS '회원번호';
COMMENT ON COLUMN RESERVATION.REF_PNO IS '참조펫시터프로필번호';

--------------------------------------------------
-----------------    결제 테이블    ----------------
--------------------------------------------------
CREATE TABLE PAYMENT (
	PAY_NO NUMBER PRIMARY KEY,
	PAY_DATE DATE NOT NULL,
	PAY_DESCRIPTION VARCHAR2(1000),
	PAY_PRICE NUMBER NOT NULL,
	STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	REF_RESNO NUMBER NOT NULL,
    FOREIGN KEY (REF_RESNO) REFERENCES RESERVATION (RES_NO)
);

COMMENT ON COLUMN PAYMENT.PAY_NO IS '결제번호';
COMMENT ON COLUMN PAYMENT.PAY_DATE IS '결제일시';
COMMENT ON COLUMN PAYMENT.PAY_DESCRIPTION IS '결제내용';
COMMENT ON COLUMN PAYMENT.PAY_PRICE IS '결제금액';
COMMENT ON COLUMN PAYMENT.STATUS IS '결제상태 유지중=Y / 취소됨=N';
COMMENT ON COLUMN PAYMENT.REF_RESNO IS '참조예약번호';

--------------------------------------------------
-----------------    후기 테이블    ----------------
--------------------------------------------------
CREATE TABLE REVIEW (
	REV_NO NUMBER PRIMARY KEY,
	REV_TITLE VARCHAR2(250) NOT NULL,
	REV_CONTENT	VARCHAR2(2000) NOT NULL,
	CREATE_DATE	DATE DEFAULT SYSDATE,
	A_CONTENT VARCHAR2(1000),
	A_DATE DATE,
	STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	FILE_PATH VARCHAR2(1000),
	REF_RESNO NUMBER NOT NULL,
    FOREIGN KEY (REF_RESNO) REFERENCES RESERVATION (RES_NO)
);

COMMENT ON COLUMN REVIEW.REV_NO IS '후기번호';
COMMENT ON COLUMN REVIEW.REV_TITLE IS '후기제목';
COMMENT ON COLUMN REVIEW.REV_CONTENT IS '후기내용';
COMMENT ON COLUMN REVIEW.CREATE_DATE IS '작성일';
COMMENT ON COLUMN REVIEW.A_CONTENT IS '답변내용';
COMMENT ON COLUMN REVIEW.A_DATE IS '답변일';
COMMENT ON COLUMN REVIEW.STATUS IS '삭제여부 유지중=Y / 삭제됨=N';
COMMENT ON COLUMN REVIEW.FILE_PATH IS '파일경로';
COMMENT ON COLUMN REVIEW.REF_RESNO IS '참조예약번호';

--------------------------------------------------
---------------    돌봄일지 테이블    ---------------
--------------------------------------------------
CREATE TABLE JOURNAL (
	J_NO NUMBER PRIMARY KEY,
	J_TITLE VARCHAR2(250) NOT NULL,
	J_CONTENT VARCHAR2(2000) NOT NULL,
	CREATE_DATE DATE DEFAULT SYSDATE,
	STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	REF_RESNO NUMBER NOT NULL,
    FOREIGN KEY (REF_RESNO) REFERENCES RESERVATION (RES_NO)
);

COMMENT ON COLUMN JOURNAL.J_NO IS '돌봄일지 번호';
COMMENT ON COLUMN JOURNAL.J_TITLE IS '돌봄일지 제목';
COMMENT ON COLUMN JOURNAL.J_CONTENT IS '돌봄일지 내용';
COMMENT ON COLUMN JOURNAL.CREATE_DATE IS '게시일';
COMMENT ON COLUMN JOURNAL.STATUS IS '삭제여부 유지중=Y / 삭제됨=N';
COMMENT ON COLUMN JOURNAL.REF_RESNO IS '참조예약번호';

--------------------------------------------------
-----------    돌봄일지 첨부파일 테이블    ------------
--------------------------------------------------
CREATE TABLE J_ATTACHMENT (
	FILE_NO NUMBER PRIMARY KEY,
	ORIGIN_NAME	VARCHAR2(100) NOT NULL,
	CHANGE_NAME	VARCHAR2(100) NOT NULL,
	FILE_PATH VARCHAR2(1000) NOT NULL,
	CREATE_DATE	DATE DEFAULT SYSDATE,
	STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	FILE_LEVEL NUMBER,
	REF_JNO	NUMBER NOT NULL,
    FOREIGN KEY (REF_JNO) REFERENCES JOURNAL (J_NO)
);

COMMENT ON COLUMN J_ATTACHMENT.FILE_NO IS '파일번호';
COMMENT ON COLUMN J_ATTACHMENT.ORIGIN_NAME IS '원본파일명';
COMMENT ON COLUMN J_ATTACHMENT.CHANGE_NAME IS '수정파일명';
COMMENT ON COLUMN J_ATTACHMENT.FILE_PATH IS '파일경로';
COMMENT ON COLUMN J_ATTACHMENT.CREATE_DATE IS '파일업로드날짜';
COMMENT ON COLUMN J_ATTACHMENT.STATUS IS '삭제여부 유지중=Y / 삭제됨=N';
COMMENT ON COLUMN J_ATTACHMENT.FILE_LEVEL IS '파일레벨';
COMMENT ON COLUMN J_ATTACHMENT.REF_JNO IS '참조돌봄일지번호';

--------------------------------------------------
----------------    채팅방 테이블    ----------------
--------------------------------------------------
CREATE TABLE CHAT_ROOM (
	ROOM_NO	NUMBER PRIMARY KEY,
	USER_NO NUMBER NOT NULL,
	MASTER_NO NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO),
    FOREIGN KEY (MASTER_NO) REFERENCES MEMBER (USER_NO)
);

COMMENT ON COLUMN CHAT_ROOM.ROOM_NO IS '채팅방번호';
COMMENT ON COLUMN CHAT_ROOM.USER_NO IS '회원1';
COMMENT ON COLUMN CHAT_ROOM.MASTER_NO IS '회원2';

--------------------------------------------------
----------------    메세지 테이블    ----------------
--------------------------------------------------
CREATE TABLE MESSAGE (
	M_NO NUMBER PRIMARY KEY,
	M_CONTENT VARCHAR2(3000) NOT NULL,
	CREATE_DATE DATE DEFAULT SYSDATE,
    USER_NO	NUMBER NOT NULL,
	ROOM_NO	NUMBER NOT NULL,
	FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO),
    FOREIGN KEY (ROOM_NO) REFERENCES CHAT_ROOM (ROOM_NO)
);

COMMENT ON COLUMN MESSAGE.M_NO IS '메세지번호';
COMMENT ON COLUMN MESSAGE.M_CONTENT IS '메세지 내용';
COMMENT ON COLUMN MESSAGE.CREATE_DATE IS '전송일시';
COMMENT ON COLUMN MESSAGE.ROOM_NO IS '채팅방번호';
COMMENT ON COLUMN MESSAGE.USER_NO IS '회원번호';



COMMIT;

