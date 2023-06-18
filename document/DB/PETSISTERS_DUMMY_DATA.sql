--------------------------------------------------
--------------    ȸ�� ���̺� ����    --------------
--------------------------------------------------
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'admin', '1234', '������', '1234561234567', '������', '01012341234', 'admin@kh.or.kr', '����� ��������', 'F', 'N', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/1.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user01', 'pass01', '�����1', '1234561234567', '�����1', '01011111111', 'user01@kh.or.kr', '����� ��������', 'F', 'Y', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/2.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user02', 'pass02', '�����2', '1234561234567', '�����2', '01022222222', 'user02@kh.or.kr', '����� ��������', 'F', 'Y', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/3.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user03', 'pass03', '�����3', '1234561234567', '�����3', '01033333333', 'user03@kh.or.kr', '����� ��������', 'F', 'Y', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/4.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user04', 'pass04', '�����4', '1234561234567', '�����4', '01044444444', 'user04@kh.or.kr', '����� ��������', 'F', 'Y', 'Y', '2023-05-01', 'Y', '/resources/upFiles/member_profiles/5.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user05', 'pass05', '�����5', '1234561234567', '�����5', '01055555555', 'user05@kh.or.kr', '����� ��������', 'F', 'Y', 'Y', '2023-06-01', 'Y', '/resources/upFiles/member_profiles/6.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user06', 'pass06', '��6', '1234561234567', '��6', '01066666666', 'user06@kh.or.kr', '����� ��������', 'F', 'N', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/7.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user07', 'pass07', '��7', '1234561234567', '��7', '01077777777', 'user07@kh.or.kr', '����� ��������', 'F', 'N', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/8.png', SYSDATE);

--------------------------------------------------
-----------    ����� ������ ���̺� ����    -----------
--------------------------------------------------
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '�����ϰ� ����ϰ� �����ִ� �����','test', NULL, NULL, DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, 'test', 'test', NULL, NULL, DEFAULT, 3);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '�����ϰ� ����ϰ� �����ִ� �����','ȣ�ڰ���, ������', '����, �����', '��� ���°�', DEFAULT, 4);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '���� 4�� ������Դϴ�.','��Ӵ� ȣ������?', '����, �����', '��� ���°�', DEFAULT, 5);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '���� 5�� ������Դϴ�.','�ƴ� ȣ�ڰ��� ȣ!��!��!��!��!!!!', '����, �����', '��� ���°�', DEFAULT, 6);

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
         '�׸��̻���1.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         1);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '�׸��̻���2.jpg',
         '�׸��̻���2.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         2);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '��1.jpg',
         '��1.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         3);   
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '��2.jpg',
         '��2.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         4);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '��3.jpg',
         '��3.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         4);     
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '��4.jpg',
         '��4.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         5);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '��1.jpg',
         '��1.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         5);

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
�����մϴ�.', '2023-06-01', 777, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[�ȳ�] 6�� ������ �޹� ���� �ȳ�',
'�ȳ��ϼ��� ��ý������Դϴ�. <br/> �׻� ��ý���� �̿����ֽô� ��ȣ�ڴԵ鲲 �������� ����帳�ϴ�. <br/><br/>
2023�� 6�� ������ �޹� ���� �ȳ� �帳�ϴ�. <br/>
��ȣ�ڴ��� ���� ��Ź�帮��, �Ʒ� ���� Ȯ���ϼż� �̿뿡 ���� �����ñ⸦ �ٶ��ϴ�. <br/><br/>
�� ������ : 2023. 06. 06(ȭ) ������ �޹� <br/><br/>
���Ǳۿ� ���� �亯�� 6�� 7��(��)���� ���������� �����˴ϴ�. <br/><br/>
�����մϴ�.', '2023-06-05', 486, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[����] ������ �ݷ������� ��',
'������ �ݷ������� ���̿���. �̸����� �Ϳ��� �ʳ���? <br/> �� �Ϳ��ٰ�? �׷����� ���µ�... <br/><br/>', '2023-06-06', 120, 'Y');
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
���� ����, �ǰ��ϰ� ���� ���� �� �ֵ��� ��ȣ�ڴԵ��� �� ì��ø� ���ڽ��ϴ�.', '2023-06-10', 404, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[����] ���� ���� ���� �� ���', 
'���� ���� <br/>
? ���� 3�� �� : ���� ���� <br/>
? ���� 1~2�� �� : ���� �ݾ��� 20% ������ �߻� <br/>
? ���� ���� : ���� �Ұ� <br/><br/>
���� ��� <br/>
? ���� 3�� �� : ���� ȯ�� <br/>
? ���� 1~2�� �� : ���� �ݾ��� 50% ȯ�� <br/>
? ���� ���� 3�ð� �� : ���� �ݾ��� 20% ȯ�� <br/>
? ���� ���� 3�ð� �̳� : ȯ�ұ� ���� <br/><br/>
* ������� ���� �� û���ݾ��� �������� �մϴ�.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[�ȳ�] ä���� ������?', 
'���԰� ������� �������� ��ȣ�� ���� �� �� ���� ä������ ���̿� ���� �߰����� ���� ����Ϳ� �̾߱� �� �� �ִ� ä�� �ý����Դϴ�.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[�ȳ�] ä�ù��� ���� �����ǳ���?', 
'? ����Ͱ� �����ǰ� ���� �� ���� �Ϸᰡ �Ǹ� �ڵ����� ä�ù��� ���µ˴ϴ�.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[�ȳ�] ���� ��й�ȣ �� ���� ������ ������ ��', 
'���� ��й�ȣ�� ��ý����� �������� ������� ������, �������� �� �ڵ����� �Ҹ�˴ϴ�. <br/><br/>
����, �湮����͵� ���������� �߿伺�� ������ ����͸� � ���Դϴ�.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[����] ����� ���� ����', 
'��. ���� ���൵ �����մϴ�. <br/><br/>
�׷��� ������ ���� �����ϰ� Ȯ���ϱ� ���ؼ��� �ּ� 3�� ���� �̸� �����ϴ� ���� ��õ�帳�ϴ�.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[�ȳ�] ����ʹԵ��� ���� �� �ֳ���?', 
'��ٷο� �ſ� ���� �� ���� �ְ� �ݷ����� �������� ������ ������ 10% �̸��� �հ��ڸ��� ��ý����� ����ͷ� Ȱ���ϰ� �ֽ��ϴ�. <br/> ����, ��ý����� ����͵� ��� ���Ե��� �Ƚ��Ͻ� �� �ֵ���, ��� ���� ������ �ǽð����� �Կ��ϴ� �Ϳ� �����ϸ�, �� 4������ ���� ������ �ǹ�ȭ �ϰ� �ֽ��ϴ�. <br/> �ſ� ������ �δ�� �ź��� �纻�� ���� �ſ��� �����ϰ�, ������� ���༭�� ������ ���� ������ �����ϰ� ��ȣ�� ���� �������� ����մϴ�. <br/> ����, ����� ��༭�� ����, ��ý����� �Ҽ����� Ȱ�� ���� ����ʹԵ��� ���������� �����ϰ� �ֽ��ϴ�.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[�ȳ�] ��ý����� ������� �������� �����ΰ���?', 
'* �� ������ ������� ���� ����� ���� �ý��� <br/>
- ����ý� ����� ���� ���� �Ʒû�� ���� ��ȭ ��� <br/>
- ���� ��Ȳ�� �湮 �ַ������ ������ ����� ���� <br/>
- ����� ���� �������� ���� ���� �� �ǵ�� ���� <br/> <br/>
* 10���� ����� ����� ��ǰ ����, ��Ÿ��Ŷ�� ����� ����� <br/>
- ����ʹ� ȫ���� ���� ���� ���� <br/>
- ��ý����� ������ (������, �ٶ�����, Ƽ����) ���� <br/>
- ��å����, �躯����, Ż����, �ռҵ��� �� ���� <br/>
- �׸��� ����� �� �ֽ��ϴ� <br/> <br/>
* ���� ����� ���� ���� ����� ������ �����մϴ�. <br/>
- �ݷ������� ���� ����ʹ��� ���ظ� �Ծ��� ���, �ִ� 1ȸ 10������ ���� ����� �����մϴ�. <br/>
- �ش� �ݷ������� ������ ���, �ִ� 100�������� ���� (����ʹ��� ��å ������ ��� ���� ���� �Ұ�)', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[����] ����ʹ� Ȯ���� ������ ����� �� �ֳ���?', 
'����� ��࿡ ���� ��Ģ������ ����ʹ� Ȯ���� ������ ����� �� �����ϴ�. <br/>
���� ��å ������ ��Ҹ� �� ��쿡�� �г�Ƽ�� �ΰ��˴ϴ�.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[�����] �ݷ����� Ű������ �ʾҴµ�, ������ �����Ѱ���?', 
'�ݷ����� Ű�� ������ ��� ������ �����մϴ�. <br/>
��ý�������� �ݷ��߿� ���� ���� ������ �ǽ��ϸ�, <br/>
�б⸶���� ���� ������ ������ �����̹Ƿ� �������� ���� ���� ��Ź�帳�ϴ�.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[����] �������� ó����ħ �����˴ϴ�.', 
'�ȳ��ϼ��� ��ý������Դϴ�. <br/>
�׻� ��ý���� �̿����ֽô� ��ȣ�ڴԵ鲲 �������� ���� �λ縦 �帮��, <br/>
�������� ó����ħ�� �����ϰ� �Ǿ� �ȳ��帳�ϴ�. <br/>
���� �����ϰ� ���� ������ �Ʒ��� �����ϴ�. <br/> <br/>
[���� ������] <br/>
���� ������ : 2023�� 6�� 20�� <br/>
���� ������ : 2023�� 7�� 1�� <br/> <br/>
�� ������ �������� ������ ���, <br/>
���� �������� 2023�� 7�� 1�� �������� �� ������ ���� �ź��ǻ縦 ǥ���ϰ�, ��ý���� Ż���� �� �ֽ��ϴ�. <br/> <br/>
���� ������ ���Ŀ��� �ź� �ǻ縦 ǥ������ �ʰ� ���񽺸� �̿��ϴ� ��� ���濡 ������ ������ �����մϴ�. <br/> <br/>
��ý������ �����ε� ȸ���е��� �� ���� ���񽺸� �̿��Ͻ� �� �ֵ��� �ּ��� ����� ���ϰڽ��ϴ�. <br/> �����մϴ�.', '2023-06-20', 0, 'Y');

--------------------------------------------------
------------    1:1���� ���̺� ����    ------------
--------------------------------------------------
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, FILE_PATH, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '����� ���Ŀ� ���� ��ó�� ������'
           , '���� �ֱٿ� �ñ� ����� ���ķ� �� ���̴� ��ó�� �߰��߾��. <br/>
             ����� �в� ���޹��� ������ �������. <br/>
             ������ ���� ������ �ƴ����� �ɾ��Ͻø鼭 �˾�ä�� ���� ������ �ƴϾ��� �� ������ ���� ���̾����� �� �˰� �;��.'
           , '2023-06-07'
           , 'Y'
           , 'resources/upFiles/inquiry_upfiles/����������.png'
           , 7);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '���� ������ �Ϸ羿 �̷� �� �������?'
           , '������ �ٲ� üũ��, üũ�ƿ� ��¥�� �Ϸ羿 �̷�� ��������. <br/>
             Ȥ�� ������ ������� �ʰ� ����� �緮���� ��¥�� �̷� �� �������?'
           , '2023-06-14'
           , 'Y'
           , 7);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, FILE_PATH, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '���� �ϳ׽� ���� �ٲ� �� ���ƿ�.'
           , '����� �ñ�鼭 ���� ��ȴ� �ϳ׽����� �־��µ�, ���� ���� �� �ƴ϶󼭿�. <br/>
             �� �� ������ ���Ƽ� �򰥸��� �� ������ ����� �в� ���������� ���� �帱 ����� �������?'
           , SYSDATE
           , 'Y'
           , 'resources/upFiles/inquiry_upfiles/�ϳ׽�.jpg'
           , 7);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '����� ���Ŀ� ���� ��ó�� ������'
           , '���� �ֱٿ� �ñ� ����� ���ķ� �� ���̴� ��ó�� �߰��߾��. <br/>
             ����� �в� ���޹��� ������ �������. <br/>
             ������ ���� ������ �ƴ����� �ɾ��Ͻø鼭 �˾�ä�� ���� ������ �ƴϾ��� �� ������ ���� ���̾����� �� �˰� �;��.'
           , '2023-06-07'
           , 'Y'
           , 8);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '���� ������ �Ϸ羿 �̷� �� �������?'
           , '������ �ٲ� üũ��, üũ�ƿ� ��¥�� �Ϸ羿 �̷�� ��������. <br/>
             Ȥ�� ������ ������� �ʰ� ����� �緮���� ��¥�� �̷� �� �������?'
           , '2023-06-14'
           , 'Y'
           , 8);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '���� �ϳ׽� ���� �ٲ� �� ���ƿ�.'
           , '����� �ñ�鼭 ���� ��ȴ� �ϳ׽����� �־��µ�, ���� ���� �� �ƴ϶󼭿�. <br/>
             �� �� ������ ���Ƽ� �򰥸��� �� ������ ����� �в� ���������� ���� �帱 ����� �������?'
           , SYSDATE
           , 'Y'
           , 8);
           
--------------------------------------------------
----------    1:1���� ��� ���̺� ����    ----------
--------------------------------------------------
INSERT INTO CS_REPLY
(REP_NO, REP_CONTENT, USER_NO, REF_INO, CREATE_DATE)
VALUES(SEQ_CS_REPLY.NEXTVAL
         ,'�ȳ��ϼ���, ���� ������ �̷� �� �ִ� �� ���� �ּ̽��ϴ�. �ش��Ͽ� ����� ���� ������ �����ôٸ� ��� �� �翹�� �����մϴ�. ���� ������ ���� �̷�帱 ���� ���� �� ���� ��Ź�帳�ϴ�. �����մϴ�.'
         ,1         
         ,2
         ,'2023-06-14');
INSERT INTO CS_REPLY
(REP_NO, REP_CONTENT, USER_NO, REF_INO, CREATE_DATE)
VALUES(SEQ_CS_REPLY.NEXTVAL
         ,'��... �˰ڽ��ϴ�. ������ ������ �ۿ� �� ���Ҵµ� ��� ������� ������ �δ��ؾ��ϴ� ����?'
         ,7
         ,2
         ,'2023-06-14');
INSERT INTO CS_REPLY
(REP_NO, REP_CONTENT, USER_NO, REF_INO, CREATE_DATE)
VALUES(SEQ_CS_REPLY.NEXTVAL
         ,'�ȳ��ϼ���, �翹�� �� ������ �ΰ��� �����ؼ� ���� �ּ̽��ϴ�. ���� ��� �� �翹�� Ȯ�� �� ������� ȯ�ҵ˴ϴ�. �����մϴ�.'
         ,1         
         ,2
         ,'2023-06-14');  
      
INSERT INTO CS_REPLY
(REP_NO, REP_CONTENT, USER_NO, REF_INO, CREATE_DATE)
VALUES(SEQ_CS_REPLY.NEXTVAL
         ,'�ȳ��ϼ���, �ϳ׽� ���� �ٲ�̴ٰ� ���� �̴ּµ� �����ؼ� �ش� ����� �Կ��� �����ص�Ƚ��ϴ�. �ִ��� ���� �ذ��Ͻ� �� �ֵ��� �� �ּ��� ���ϰڽ��ϴ�. �����մϴ�.'
         ,1         
         ,6
         ,SYSDATE); 
INSERT INTO CS_REPLY
(REP_NO, REP_CONTENT, USER_NO, REF_INO, CREATE_DATE)
VALUES(SEQ_CS_REPLY.NEXTVAL
         ,'����ʹԲ� ���� ��Ƚ��ϴ�. �ִ��� ������ ��Ȯ�ϰ� ��Ȳ �ľ� �� �ٽ� ���� �帮�ڽ��ϴ�. �����մϴ�.'
         ,7         
         ,1
         ,'2023-06-07');
 
--------------------------------------------------
------------    ������� ���̺� ����    ------------
--------------------------------------------------
INSERT INTO P_LIKE
VALUES (1, 2);
INSERT INTO P_LIKE
VALUES (3, 2);
INSERT INTO P_LIKE
VALUES (5, 2);
INSERT INTO P_LIKE
VALUES (7, 2);
INSERT INTO P_LIKE
VALUES (8, 2);

INSERT INTO P_LIKE
VALUES (2, 3);
INSERT INTO P_LIKE
VALUES (4, 3);
INSERT INTO P_LIKE
VALUES (6, 3);
INSERT INTO P_LIKE
VALUES (8, 3);

INSERT INTO P_LIKE
VALUES (1, 4);
INSERT INTO P_LIKE
VALUES (2, 4);
INSERT INTO P_LIKE
VALUES (5, 4);
INSERT INTO P_LIKE
VALUES (6, 4);
INSERT INTO P_LIKE
VALUES (8, 4);

INSERT INTO P_LIKE
VALUES (1, 5);
INSERT INTO P_LIKE
VALUES (2, 5);
INSERT INTO P_LIKE
VALUES (4, 5);
INSERT INTO P_LIKE
VALUES (5, 5);
INSERT INTO P_LIKE
VALUES (7, 5);
INSERT INTO P_LIKE
VALUES (8, 5);

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
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-01',
         '2023-06-20',
         '2023-05-29',
         '�޼����Դϴ�',
         'Y',
         3,
         4);        
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-10',
         '2023-06-11',
         '2023-05-30',
         '������ͽ���',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-08',
         '2023-06-09',
         '2023-06-01',
         '�򰥸���',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-15',
         '2023-06-29',
         '2023-06-03',
         '�����������',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-01',
         '2023-06-30',
         '2023-06-04',
         '�������',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-11',
         '2023-06-29',
         '2023-06-05',
         '��𰡳��̾�',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-29',
         '2023-07-01',
         '2023-06-07',
         '�����׸�����',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-10',
         '2023-06-20',
         '2023-06-08',
         '����!',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-07-01',
         '2023-07-20',
         '2023-06-10',
         '�ø��̵���',
         'Y',
         3,
         4);          
         
--------------------------------------------------
----------    ����Ұ��ɳ�¥ ���̺� ����    ----------
--------------------------------------------------   
INSERT INTO IMPOSSIBLE_DATE VALUES ('2023-06-18', 1);
INSERT INTO IMPOSSIBLE_DATE VALUES ('2023-06-19', 2);

--------------------------------------------------
-----------    �������� ���̺� ����    -------------
--------------------------------------------------
INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', SYSDATE, 'Y', 1);	 	    	

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', SYSDATE, 'Y', 4); 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', SYSDATE, 'Y', 5);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', SYSDATE, 'Y', 6);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', SYSDATE, 'Y', 7);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', SYSDATE, 'Y', 8);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', SYSDATE, 'Y', 17);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', SYSDATE, 'Y', 16);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', SYSDATE, 'Y', 15);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', SYSDATE, 'Y', 14);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', SYSDATE, 'Y', 13);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', '2023-06-12', 'Y', 12);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', '2023-06-11', 'Y', 11);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', '2023-06-10', 'Y', 10);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, '�����׽�Ʈ1', '�����׽�Ʈ����1', '2023-06-10', 'Y', 9);	 


--------------------------------------------------
---------    �������� ���� ���̺� ����    -----------
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
                        '��ũ���� 2023-03-16 100627.png', 
                        '2023061309592568786.png', 
                        'resources/upFiles/care_upfiles/', 
                        SYSDATE, 
                        'Y', 
                        1, 
                        SEQ_JOURNAL.CURRVAL);
         
--------------------------------------------------
---------------    �ı� ���̺� ����    --------------
--------------------------------------------------
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '���� �Ѹ� ���Ϳ�', '���� �̸� �����Ͻ���..ȫȫ',
    SYSDATE, '�����ϼ̴ٴ� ����� ���׿�', SYSDATE, 'Y', NULL, 1);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '���� �Ѹ� ���Ϳ�', '���� �̸� �����Ͻ���..ȫȫ',
    SYSDATE, '�����ϼ̴ٴ� ����� ���׿�', SYSDATE, 'Y', NULL, 2);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '���� �Ѹ� ���Ϳ�', '���� �̸� �����Ͻ���..ȫȫ',
    SYSDATE, '�����ϼ̴ٴ� ����� ���׿�', SYSDATE, 'Y', NULL, 3);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '���� �Ѹ� ���Ϳ�', '���� �̸� �����Ͻ���..ȫȫ',
    SYSDATE, '�����ϼ̴ٴ� ����� ���׿�', SYSDATE, 'Y', NULL, 4);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '���� �Ѹ� ���Ϳ�', '���� �̸� �����Ͻ���..ȫȫ',
    SYSDATE, '�����ϼ̴ٴ� ����� ���׿�', SYSDATE, 'Y', NULL, 5);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '���� �Ѹ� ���Ϳ�', '���� �̸� �����Ͻ���..ȫȫ',
    SYSDATE, '�����ϼ̴ٴ� ����� ���׿�', SYSDATE, 'Y', NULL, 6);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '���� �Ѹ� ���Ϳ�', '���� �̸� �����Ͻ���..ȫȫ',
    SYSDATE, '�����ϼ̴ٴ� ����� ���׿�', SYSDATE, 'Y', NULL, 7);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '���� �Ѹ� ���Ϳ�', '���� �̸� �����Ͻ���..ȫȫ',
    SYSDATE, '�����ϼ̴ٴ� ����� ���׿�', SYSDATE, 'Y', NULL, 8);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '���� �Ѹ� ���Ϳ�', '���� �̸� �����Ͻ���..ȫȫ',
    SYSDATE, '�����ϼ̴ٴ� ����� ���׿�', SYSDATE, 'Y', NULL, 9);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, '���� �Ѹ� ���Ϳ�', '���� �̸� �����Ͻ���..ȫȫ',
    SYSDATE, '�����ϼ̴ٴ� ����� ���׿�', SYSDATE, 'Y', NULL, 10);
       
       
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
       'resources/upFiles/dog_profiles/����.jpg',
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
       'resources/upFiles/dog_profiles/����.jpg',
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
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       4); 
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '������',
       'M',
       '��𿹵�',
       '19/08/13',
       19,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       2);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '����',
       'M',
       '�ͽ���',
       '18/03/28',
       13,
       'N',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       2);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '����',
       'F',
       'Ǫ��',
       '14/10/04',
       10,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       2);
       
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '����',
       'M',
       '���˵�Է�',
       '19/11/11',
       8,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       3);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '��ġ',
       'F',
       '�ùٰ�',
       '17/01/09',
       12,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       3);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'ťƼ',
       'F',
       '�����ڱ�',
       '20/07/25',
       14,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       3);

INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '��Ű',
       'M',
       '�ҵ�',
       '21/06/06',
       16,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       4);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '��Ű',
       'M',
       '�����ڱ�',
       '22/10/30',
       7,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       4);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '������',
       'F',
       'Ǫ��',
       '23/01/11',
       8,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       4);
       
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '����',
       'M',
       '������',
       '19/05/16',
       17,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       5);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '�޷�',
       'F',
       '����',
       '21/02/14',
       6,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       5);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '����',
       'F',
       '��ƼǪ',
       '22/12/22',
       5,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       5);
       
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '��Ű',
       'M',
       '��Ƽ��',
       '17/09/09',
       9,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       6);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '�����',
       'F',
       '���˵�����',
       '21/11/11',
       8,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       6);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '������',
       'F',
       'Ǫ��',
       '23/01/11',
       8,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       6);
       
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '����',
       'F',
       'Ǫ��',
       '19/04/18',
       10,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       7);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '������',
       'F',
       '�ڽ���Ʈ',
       '21/07/07',
       7,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       7);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '������',
       'M',
       '���',
       '23/02/08',
       3,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       7);
       
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '�ٺ�',
       'F',
       '���',
       '16/05/30',
       9,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       8);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '����',
       'M',
       '��������',
       '18/11/07',
       8,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       8);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '�ʷ���',
       'M',
       '�۱�',
       '22/04/23',
       6,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/����.jpg',
       'Y',
       8);
       
--------------------------------------------------
--------------    ���� ���̺� ����    --------------
--------------------------------------------------
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-02-01',
       '������ ����',
       165000,
       DEFAULT,
       1);

INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-03-06',
       '��������',
       300000,
       DEFAULT,
       2);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-03-27',
       '������',
       550000,
       DEFAULT,
       3);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-04-15',
       '����',
       55000,
       DEFAULT,
       4);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-04-20',
       '�Ѹ���',
       110000,
       DEFAULT,
       5);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-05-15',
       '�Ϸ���Ӹ�',
       55000,
       DEFAULT,
       6);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '���پ�',
       165000,
       DEFAULT,
       7);       
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '�Ⱥ�°',
       220000,
       DEFAULT,
       8);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '����°',
       55000,
       DEFAULT,
       9); 
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '������',
       1100000,
       DEFAULT,
       10);       
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '�̰Թ��Ƹ��Դϴ�',
       110000,
       DEFAULT,
       11);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '�̰Ը³�',
       550000,
       DEFAULT,
       12);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '�𸣰δ�',
       55000,
       DEFAULT,
       13);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '�Ƹ���',
       165000,
       DEFAULT,
       14);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '�R�P',
       1100000,
       DEFAULT,
       15);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '��Ƶο���',
       1100000,
       DEFAULT,
       16);         
           
--------------------------------------------------
--------------    ä�ù� ���̺� ����    --------------
--------------------------------------------------
INSERT INTO CHAT_ROOM VALUES(SEQ_CHAT_ROOM.NEXTVAL,1,'������', '/resources/upFiles/member_profiles/1.png', 'N', 'N', 2,'�����1', '/resources/upFiles/member_profiles/2.png', 'Y', 'Y');
INSERT INTO CHAT_ROOM VALUES(SEQ_CHAT_ROOM.NEXTVAL,3,'�����2','/resources/upFiles/member_profiles/3.png', 'N', 'N', 1,'������', '/resources/upFiles/member_profiles/1.png', 'Y', 'Y');

--------------------------------------------------
--------------    �޼��� ���̺� ����    --------------
--------------------------------------------------
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '�޼�������1', DEFAULT, 1, 1, DEFAULT);
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '�޼�������2', DEFAULT, 1, 1, DEFAULT);
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '�޼�������3', DEFAULT, 1, 1, DEFAULT);
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '�޼�������1', DEFAULT, 2, 2, DEFAULT);
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '�޼�������2', DEFAULT, 2, 2, DEFAULT);
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '�޼�������3', DEFAULT, 2, 2, DEFAULT);

----------------------------------------------------------------
--------------    Ŀ�´�Ƽ (�ϹݰԽ���) ���̺� ����    --------------
----------------------------------------------------------------
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����1', '��������å �ٳ�Ծ��!!', SYSDATE, DEFAULT, DEFAULT, 1, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����2', '��������å ������õ�̿�!!', SYSDATE, DEFAULT, DEFAULT, 2, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����3', '������ �Ծ��߾��!!', SYSDATE, DEFAULT, DEFAULT, 3, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����4', '������ ������ ������!!', SYSDATE, DEFAULT, DEFAULT, 4, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����5', '�����̶� ��å �ٳ�Ծ��!!', SYSDATE, DEFAULT, DEFAULT, 5, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����6', '������ ���� ��������!!', SYSDATE, DEFAULT, DEFAULT, 6, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����7', '������ �ǰ��� �ڶ��ؿ�!!', SYSDATE, DEFAULT, DEFAULT, 7, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����8', '�츮 ���������� �����ϴ� ���ĵ� ��õ!!', SYSDATE, DEFAULT, DEFAULT, 8, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����9', '���õ� ��ſ��Ϸ�!!', SYSDATE, DEFAULT, DEFAULT, 1, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����10', '����� ���� �������� �Բ�!!', SYSDATE, DEFAULT, DEFAULT, 2, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����11', '���ο� ������ ������!!', SYSDATE, DEFAULT, DEFAULT, 8, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����12', '�������� �����ϴ� �����!!', SYSDATE, DEFAULT, DEFAULT, 7, 1, 1);

----------------------------------------------------------------
--------------    Ŀ�´�Ƽ (�����Խ���) ���̺� ����    --------------
----------------------------------------------------------------
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����1', '����³� ������ ����!!', SYSDATE, DEFAULT, DEFAULT, 5, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����2', '�������� ���� �߾�!!', SYSDATE, DEFAULT, DEFAULT, 6, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����3', '��꼿ī �ڶ��ؿ�!!', SYSDATE, DEFAULT, DEFAULT, 7, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����4', '������ ������� ������!!', SYSDATE, DEFAULT, DEFAULT, 8, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����5', '������ ��å���ӿ��� ������!!', SYSDATE, DEFAULT, DEFAULT, 3, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����6', '������ ������ �������� ������õ!!', SYSDATE, DEFAULT, DEFAULT, 6, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����7', '�츮 ������ �ֱ����!!', SYSDATE, DEFAULT, DEFAULT, 7, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����8', '�츮 ���������� �����ϴ� ���ĵ� ��õ!!', SYSDATE, DEFAULT, DEFAULT, 4, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����9', '���õ� ��ſ��Ϸ�!!', SYSDATE, DEFAULT, DEFAULT, 8, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����10', '����̿� ������!!', SYSDATE, DEFAULT, DEFAULT, 2, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����11', '������ ����� ������!!', SYSDATE, DEFAULT, DEFAULT, 3, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, '����12', '������ ������ ����� ��������!!', SYSDATE, DEFAULT, DEFAULT, 1, 2, 1);


--------------------------------------------------
-----------------    Ŀ�Ա���    ------------------
--------------------------------------------------
         
 COMMIT;