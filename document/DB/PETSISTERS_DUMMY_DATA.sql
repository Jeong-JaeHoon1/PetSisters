--------------------------------------------------
--------------    ȸ�� ���̺� ����    --------------
--------------------------------------------------
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'admin', '1234', '������', '1234561234567', '������', '01012341234', 'admin@kh.or.kr', '����� ��������', 'F', 'N', 'N', NULL, 'Y', NULL, SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user01', 'pass01', '�����1', '1234561234567', '�����1', '01011111111', 'user01@kh.or.kr', '����� ��������', 'F', 'Y', 'N', NULL, 'Y', NULL, SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user02', 'pass02', '�����2', '1234561234567', '�����2', '01022222222', 'user02@kh.or.kr', '����� ��������', 'F', 'Y', 'N', NULL, 'Y', NULL, SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user03', 'pass03', '�����3', '1234561234567', '�����3', '01033333333', 'user03@kh.or.kr', '����� ��������', 'F', 'Y', 'N', NULL, 'Y', NULL, SYSDATE);

--------------------------------------------------
----------    ����� ������ ���̺� ����    ----------
--------------------------------------------------
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '�����ϰ� ����ϰ� �����ִ� �����','test', NULL, NULL, DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, 'test', 'test', NULL, NULL, DEFAULT, 3);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, 'test', 'test', NULL, NULL, DEFAULT, 4);

INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '�����ϰ� ����ϰ� �����ִ� �����','ȣ�ڰ���, ������', '����, �����', '��� ���°�', DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '���� �����','ȣ�ڰ���, ������', '����, �����', '��� ���°�', DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '���� �����','ȣ�ڰ���, ������', '����, �����', '��� ���°�', DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '���� �����','ȣ�ڰ���, ������', '����, �����', '��� ���°�', DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '���� �����','ȣ�ڰ���, ������', '����, �����', '��� ���°�', DEFAULT, 2);

--------------------------------------------------
---------    ����� ������ ������Ʈ ����    ---------
--------------------------------------------------
UPDATE PETSITTER
SET P_CONTENT = '�ݷ����� ������ �ð� �ֽʼ� ���',
    P_SERVICE = '�๰����,��尡��,���ϻ�å',
    CARE_LIST = '���� ��ƿ�, ���� �����'
WHERE USER_NO = 2;
UPDATE PETSITTER
SET P_TITLE = '�� ���̸� ������ �����ϰ� ����ϰ�',
    P_CONTENT = '����� �������� �ּ��� ���� ������帮�ڽ��ϴ�.',
    P_SERVICE = '��߰���,����óġ,���ϻ�å,�ǳ�����',
    CARE_LIST = '����Ʈ ��ƿ�, �ݷ����� �־��'
WHERE USER_NO = 3;

--------------------------------------------------
------    ����� ������ ÷������ ���̺� ����    ------
--------------------------------------------------
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '�׸��̻���1.jpg',
         '2023060154348464359.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         1);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '�׸��̻���2.jpg',
         '2023060454348464669.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         5);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '��1.jpg',
         '2023060494348464342.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         1);     

--------------------------------------------------
-----------    �������� ���̺� ����    -------------
--------------------------------------------------
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[����] ��ý����� �Ƚɺ��� ����ȳ��帳�ϴ�.', 
'�ȳ��ϼ��� ��ý������Դϴ�. �׻� ��ý���� �̿����ֽô� ��ȣ�ڴԵ鲲 �������� ����帳�ϴ�. <br/><br/>
2023�� 4�� 1�Ϻ��� ��ý������ ���� �Ƿ� ���� ���� �ݷ������� ��ü�� ���ظ� ���� ��쿡 ���� ������� �����ϴ� ��ý����� �Ƚɺ���
(��ȭ���غ��� �����ι��å�Ӻ���)�� ���ԵǾ����� �ȳ��帳�ϴ�. <br/><br/>
��ý����� �Ƚɺ����� ���� ������ ����� �������� ��ý������ ��Ī�Ǵ� ��� ���� �Ƿڿ� ���� ����Ǹ�,
���� ������� ��ϵ� �ݷ������� ���� ��ü�� ���ظ� �����մϴ�. <br/><br/>
���� ���� ����� ���� ��ý������ �δ��ϸ�, ���� ����� ������ �����մϴ�. <br/><br/>
�����ε� ���� ������ �ݷ����� �ɾ� ���񽺸� ������ �� �ֵ��� ����ϰڽ��ϴ�. <br/><br/>
�����մϴ�.', SYSDATE, 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[�ȳ�] 6�� ������ �޹� ���� �ȳ�',
'�ȳ��ϼ��� ��ý������Դϴ�. <br/> �׻� ��ý���� �̿����ֽô� ��ȣ�ڴԵ鲲 �������� ����帳�ϴ�. <br/><br/>
2023�� 6�� ������ �޹� ���� �ȳ� �帳�ϴ�. <br/>
��ȣ�ڴ��� ���� ��Ź�帮��, �Ʒ� ���� Ȯ���ϼż� �̿뿡 ���� �����ñ⸦ �ٶ��ϴ�. <br/><br/>
�� ������ : 2023. 06. 06(ȭ) ������ �޹� <br/><br/>
���Ǳۿ� ���� �亯�� 6�� 7��(��)���� ���������� �����˴ϴ�. <br/><br/>
�����մϴ�.', SYSDATE, 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[��ȹ��] ������� ��������',
'�ȳ��ϼ��� ��ý������Դϴ�. �׻� ��ý���� �̿����ֽô� ��ȣ�ڴԵ鲲 �������� ����帳�ϴ�. <br/>
�ٰ����� ������ ������ ����� �ݷ��ΰ� �ݷ��� ��� ��̰� ����ö ��å�� ���� ����� �غ��߽��ϴ�. <br/><br/>
���� ����! <br/>
�ܿ�ö���� ���� ���� �����̳� ����� ����� ���뿡 �Ű���ּ���. <br/><br/>
�߰ſ� �ƽ���Ʈ ����! <br/>
�ƽ���Ʈ�� ���� ����� ���� �ذ� �� ���ı��� �����մϴ�. <br/>
�̰߰� �ޱ��� �ƽ���Ʈ�� �ݷ����� �߷� ��´ٸ� ȭ���� ���� �� �ֽ��ϴ�. <br/>
�Ź��� �ű�ų� �ݷ����� ���� �µ��� üũ �� �⵵�� �������ּ���. <br/><br/>
����ö���� ��� �ٽ��Ͽ� �Ǻκ��� �ɸ��� �����ϴ�. ��å�� �ٳ�ͼ� ��� �Ŀ��� �ݵ�� �Ϻ��ϰ� ������ �����ּ���. <br/>
���� ����, �ǰ��ϰ� ���� ���� �� �ֵ��� ��ȣ�ڴԵ��� �� ì��ø� ���ڽ��ϴ�.', SYSDATE, 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[����] ������ �ݷ������� ��',
'������ �ݷ������� ���̿���. �̸����� �Ϳ��� �ʳ���? <br/> �� �Ϳ��ٰ�? �׷����� ���µ�... <br/><br/>', SYSDATE, 0, 'Y');
 
--------------------------------------------------
------------    ������� ���̺� ����    ------------
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
-------------    ���� ���̺� ����    --------------
--------------------------------------------------
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '�츮�� ���� ����� ���غ�����',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-05-21',
         '2023-05-24',
         '2023-05-02',
         '�۸�',
         'Y',
         2,
         5);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-10',
         '2023-06-01',
         '����',
         'Y',
         2,
         1);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '�츮�� ���� ����� ���غ�����',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '�츮�� ���� ����� ���غ�����',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '�츮�� ���� ����� ���غ�����',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '�츮�� ���� ����� ���غ�����',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '�츮�� ���� ����� ���غ�����',
         'Y',
         2,
         4);
         
--------------------------------------------------
---------------    �ı� ���̺� ����    --------------
--------------------------------------------------
INSERT INTO REVIEW
VALUES(SEQ_REVIEW.NEXTVAL,
       '���� �Ѹ� ���Ϳ�',
       '���� �̸� �����Ͻ���..ȫȫ',
       SYSDATE,
       '�����ϼ̴ٴ� ����� ���׿�',
       SYSDATE,
       'Y',
       NULL,
       1);
       
--------------------------------------------------
-------------    ������ ���̺� ����    ---------------
--------------------------------------------------
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '�ʷ���',
       'M',
       '���۵�',
       '20/04/12',
       12,
       'N',
       NULL,
       '��ũ���� 2023-03-22 170409.png',
       'Y',
       2);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '������',
       'F',
       '��Ƽ��',
       '19/09/16',
       18,
       'Y',
       NULL,
       '��ũ���� 2023-03-22 170409.png',
       'Y',
       3);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '�ɲ���',
       'F',
       '�����Ʈ',
       '22/12/01',
       21,
       'Y',
       NULL,
       '��ũ���� 2023-03-22 170409.png',
       'Y',
       4);    
       
--------------------------------------------------
--------------    ä�ù� ���̺� ����    --------------
--------------------------------------------------
INSERT INTO CHAT_ROOM VALUES(1,1,2);
       
--------------------------------------------------
-----------------    Ŀ�Ա���    ------------------
--------------------------------------------------
         
 COMMIT;