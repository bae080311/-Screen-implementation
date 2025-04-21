--회원정보 테이블 생성 : member_tbl_02
create table member_tbl_02(
	custno number(6) not null,
	custname varchar2(20),
	phone varchar2(13),
	address varchar2(60),
	joindate date,
	grade char(1),
	city char(2),
	primary key(custno)
);

--회원정보 테이블 제거
drop table member_tbl_02;

--회원정보 샘플 데이터 입력
insert into member_tbl_02 values(100001, '김행복', '010-1111-2222', '서울 동대문구 휘경1동', '20151202', 'A', '01');
insert into member_tbl_02 values(100002, '이축복', '010-1111-3333', '서울 동대문구 휘경2동', '20151206', 'B', '01');
insert into member_tbl_02 values(100003, '장믿음', '010-1111-4444', '울릉군 울릉읍 독도1리', '20151001', 'B', '30');
insert into member_tbl_02 values(100004, '최사랑', '010-1111-5555', '울릉군 울릉읍 독도2리', '20151113', 'A', '30');
insert into member_tbl_02 values(100005, '진평화', '010-1111-6666', '제주도 제주시 외나무골', '20151225', 'B', '60');
insert into member_tbl_02 values(100006, '차공단', '010-1111-7777', '제주도 제주시 감나무골', '20151211', 'C', '60');

--입력 확인(저장)
commit;

--샘플데이터 출력(조회)
select * from member_tbl_02;








--회원매출정보 테이블 생성 : money_tbl_02
create table money_tbl_02(
	custno number(6) not null,
	salenol number(8) not null,
	pcost number(8),
	amount number(4),
	price number(8),
	pcode varchar2(4),
	sdate date,
	primary key(custno, salenol)
);

--회원매출정보 테이블 제거
drop table money_tbl_02;

--회원매출정보 샘플데이터 입력
insert into money_tbl_02 values(100001, 20160001, 500, 5, 2500, 'A001', '16/01/01');
insert into money_tbl_02 values(100001, 20160002, 1000, 4, 4000, 'A002', '16/01/01');
insert into money_tbl_02 values(100001, 20160003, 500, 3, 1500, 'A008', '16/01/01');
insert into money_tbl_02 values(100002, 20160004, 2000, 1, 2000, 'A004', '16/01/02');
insert into money_tbl_02 values(100002, 20160005, 500, 1, 500, 'A001', '16/01/03');
insert into money_tbl_02 values(100003, 20160006, 1500, 2, 3000, 'A003', '16/01/03');
insert into money_tbl_02 values(100004, 20160007, 500, 2, 1000, 'A001', '16/01/04');
insert into money_tbl_02 values(100004, 20160008, 300, 1, 300, 'A005', '16/01/04');
insert into money_tbl_02 values(100004, 20160009, 600, 1, 600, 'A006', '16/01/04');
insert into money_tbl_02 values(100004, 20160010, 3000, 1, 3000, 'A007', '16/01/06');

--입력 확인(저장)
commit;

--샘플데이터 출력(조회)
select * from money_tbl_02;

--회원번호 검색
select custno from member_tbl_02;

--회원번호의 최대값 검색
select max(custno) from member_tbl_02;

--전체 회원 목록 검색(회원번호의 오름차순)
select * from member_tbl_02 order by custno asc;

--회원매출조회
select 


select 컬럼명
from 테이블명
where 조건작성
group by 그룹화
having 그룹화조건
order by 정렬