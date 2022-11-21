------------------------------------------------------공통------------------------------------------------------
-- tb_user dummy data
--관리자
INSERT INTO public.tb_user
(user_id, user_name, user_pw, user_gender, user_birth_date, user_email, user_phone_number, user_postcode, user_rnameaddr, user_detailaddr, user_regdate, user_grade, user_social_type)
VALUES('admin', '어드민', '0111', 'F', '960305', 'admin@gmail.com', '01012345678', '06035', '강남구 도산대로34길', '상세주소입니당', now(), '관리자', 'N');
--강사
INSERT INTO public.tb_user
(user_id, user_name, user_pw, user_gender, user_birth_date, user_email, user_phone_number, user_postcode, user_rnameaddr, user_detailaddr, user_regdate, user_grade, user_social_type)
VALUES('inst', '최강사', '0111', 'M', '960305', 'instructor@gmail.com', '01012345678', '06035', '강남구 도산대로34길', '상세주소입니당', now(), '강사', 'G');
--일반회원(2)
INSERT INTO public.tb_user
(user_id, user_name, user_pw, user_gender, user_birth_date, user_email, user_phone_number, user_postcode, user_rnameaddr, user_detailaddr, user_regdate, user_grade, user_social_type)
VALUES('ezen', '김이젠', '0111', 'M', '960305', 'ezenkim@gmail.com', '01012345678', '06035', '강남구 도산대로34길', '상세주소입니당', now(), '일반회원', 'K');
INSERT INTO public.tb_user
(user_id, user_name, user_pw, user_gender, user_birth_date, user_email, user_phone_number, user_postcode, user_rnameaddr, user_detailaddr, user_regdate, user_grade, user_social_type)
VALUES('ezen1', '전이젠', '0111', 'F', '960305', 'ezenjeon@gmail.com', '01012345678', '06035', '강남구 도산대로34길', '상세주소입니당', now(), '일반회원', 'N');



------------------------------------------------------지호------------------------------------------------------
-- classroom dummy data
insert INTO classroom (croom_id, croom_location, croom_mpop, croom_name)
values(101, '1층', '30', '101호');
insert INTO classroom (croom_id, croom_location, croom_mpop, croom_name)
values(201, '2층', '30', '201호');
insert INTO classroom (croom_id, croom_location, croom_mpop, croom_name)
values(301, '3층', '30', '301호');
insert INTO classroom (croom_id, croom_location, croom_mpop, croom_name)
values('수영장', '외부', '60', '수영장');
insert INTO classroom (croom_id, croom_location, croom_mpop, croom_name)
values(102, '1층', '30', '102호');
insert INTO classroom (croom_id, croom_location, croom_mpop, croom_name)
values(202, '2층', '30', '202호');
insert INTO classroom (croom_id, croom_location, croom_mpop, croom_name)
values(302, '3층', '30', '302호');
insert INTO classroom (croom_id, croom_location, croom_mpop, croom_name)
values('축구장', '외부', '60', '축구장');
insert INTO classroom (croom_id, croom_location, croom_mpop, croom_name)
values(103, '1층', '30', '103호');
insert INTO classroom (croom_id, croom_location, croom_mpop, croom_name)
values(203, '2층', '30', '203호');
insert INTO classroom (croom_id, croom_location, croom_mpop, croom_name)
values(303, '3층', '30', '303호');
insert INTO classroom (croom_id, croom_location, croom_mpop, croom_name)
values('풋살장', '외부', '20', '풋살장');



------------------------------------------------------성호------------------------------------------------------
-- course_type dummy data
INSERT INTO public.course_type (course_cate_cd, course_cate_name) VALUES('Spo', '운동');
INSERT INTO public.course_type (course_cate_cd, course_cate_name) VALUES('Cul', '문화');
INSERT INTO public.course_type (course_cate_cd, course_cate_name) VALUES('Edu', '교육');


-- tb_course dummy data
INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('차범근축구교실', '', '2022-11-01', '2022-11-15', '2022-12-01', '2022-12-15'
, '월화수목금', '14:00~17:00', '청소년', 100000, '드리블에 대해서', 'ezen', '축구장', 'Spo', 0, 4.27);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('한국사바로알기', '', '2022-11-02', '2022-11-16', '2022-12-02', '2022-12-16'
, '월수금', '18:00~21:00', '성인', 50000, '자바앱개발과정', 'ezen', '101', 'Cul', 0, 4.98);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('이젠웹개발1', '', '2022-01-03', '2022-05-17', '2022-06-03', '2022-12-17'
, '월목', '09:00~12:00', '성인', 30000, '자바웹개발과정', 'ezen', '301', 'Edu', 0, 5.00);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('박지성축구교실', '', '2022-11-04', '2022-11-28', '2022-12-04', '2023-02-28'
, '월화수목금', '18:00~22:00', '청소년', 80000, '미드필더란', 'ezen', '축구장', 'Spo', 0, 4.50);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('공예교실', '', '2022-11-05', '2022-11-19', '2022-12-05', '2022-12-19'
, '토일', '09:00~18:00', '노인', 80000, '치매예방', 'ezen', '201', 'Cul', 0, 4.32);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('이젠앱개발1', '', '2022-01-06', '2022-06-20', '2022-07-01', '2022-12-20'
, '월수금', '10:00~13:00', '성인', 50000, '안드로이드앱개발과정', 'ezen', '302', 'Edu', 0, 4.11);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('우생순', '', '2022-11-07', '2022-11-21', '2022-12-07', '2022-12-21'
, '월화수목금', '14:00~15:00', '노인', 30000, '우리 생의 최고의 순간', 'ezen', '풋살장', 'Spo', 0, 3.98);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('NBA로 가자', '', '2022-11-08', '2022-11-22', '2022-12-08', '2022-12-22'
, '월수금', '10:00~13:00', '청소년', 30000, 'NBA와 KBA의 차이', 'ezen', '풋살장', 'Spo', 0, 1.34);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('이젠웹개발2', '', '2022-05-09', '2022-11-23', '2022-12-09', '2023-06-23'
, '월화수목금', '09:00~18:00', '성인', 100000, '자바웹개발과정', 'ezen', '303', 'Edu', 0, 3.30);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('이젠앱개발2', '', '2022-05-10', '2022-11-24', '2022-12-10', '2023-06-24'
, '월수금', '10:00~13:00', '청소년', 20000, '안드로이드앱개발과정', 'ezen', '301', 'Edu', 0, 2.87);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('크리스마스', '', '2022-12-01', '2023-12-31', '2023-01-01', '2023-01-31'
, '금', '18:00~21:00', '성인', 20000, '크리스마스시즌', 'ezen', '102', 'Cul', 0, 3.99);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('당일시작 당일마감하는 강좌', '', '2022-11-19', '2022-11-19', '2022-11-20', '2022-11-20'
, '일', '18:00~21:00', '성인', 20000, 'mapper확인용', 'ezen', '103', 'Cul', 0, 4.00);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('당일시작 당일마감하는 강좌2', '', '2022-11-20', '2022-11-20', '2022-11-21', '2022-11-21'
, '월', '18:00~21:00', '성인', 20000, 'mapper확인용', 'ezen', '202', 'Cul', 0, 4.01);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('안드로이드 앱 개발', '', '2022-11-28', '2023-02-20', '2023-03-05', '2023-08-25'
, '월화수목금', '14:00~21:00', '성인', 6800000, '안드로이드 앱 개발을 할 수 있다.', 'ezen', '301', 'Edu', 0, 4.12);

INSERT INTO public.tb_course
(course_nm, course_image, course_reg_start_date, course_reg_end_date, course_start_date, course_end_date
, course_day, course_time, course_target, course_cost, course_info, user_id, croom_id, course_cate_cd, course_applicants, course_rating)
VALUES('sqld 개발자 과정', '', '2022-11-15', '2022-11-30', '2022-12-05', '2022-12-23'
, '월수금', '18:00~21:00', '성인', 80000, 'DB 마스터 과정', 'ezen', '302', 'Edu', 0, 4.02);


-- course_review dummy data
INSERT INTO course_review (review_content, review_datetime, review_rating, course_id, user_id)
VALUES('1번 강좌 리뷰', now(), 5, 1, 'ezen');



------------------------------------------------------연희------------------------------------------------------
-- article dummy data 
INSERT INTO public.article (article_id, article_date, article_contents, article_board_type, user_id, article_title, article_viewcnt) 
VALUES(1, now(), '공지사항입니다', 'notice', 'admin', '23년 수영장 일정 공지', 0);  

INSERT INTO public.article (article_id, article_date, article_contents, article_board_type, user_id, article_title, article_viewcnt) 
VALUES(2, now(), '이벤트입니다', 'event', 'admin', '헬스장 이벤트 안내', 0);





-----------------------------------------------------나리-----------------------------------------------------------
--inquiry dummy data
-- inq_id : 문의 작성날짜(6자리) + 001~999
INSERT INTO public.inq_board
(inq_cate, user_id, inq_id, inq_title, inq_content, inq_date, inq_yn)
VALUES('교육강좌', 'ezen', 220203001, '수강 관련 문의', '수강 관련 문의 내용', now(), true);

INSERT INTO public.inq_board
(inq_cate, user_id, inq_id, inq_title, inq_content, inq_date, inq_yn)
VALUES('결제', 'ezen', 220203002, '결제 관련 문의', '결제 관련 문의 내용', now(), false);

INSERT INTO public.inq_board
(inq_cate, user_id, inq_id, inq_title, inq_content, inq_date, inq_yn)
VALUES('결제', 'ezen1', 221124001, '영수증 문의', '현금영수증 추후발급 되나요?', now(), false);

INSERT INTO public.inq_board
(inq_cate, user_id, inq_id, inq_title, inq_content, inq_date, inq_yn)
VALUES('교육강좌', 'ezen1', 221125001, '수강 신청 변경 문의', '수강 신청 변경 문의 내용', now(), true);



