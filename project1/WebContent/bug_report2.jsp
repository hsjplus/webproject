<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

2017.12.22.
---------------------------- 
[에러의 종류] INDEX창의 글자가 깨짐
[해결] charset과 encoding 수정 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
   
----------------------------
2. BUGERPORT.TXT의 글자가 깨짐
   - GIT 문제? 
   
---------------------------
product table 생성  및 삽입 sql문

create table product(
          product_cd number(10) primary key
        , pname varchar2(100)
        , pimg_ori_nm varchar2(100)
        , pimg_save_nm varchar2(100)
        , pcontent varchar2(2000)
        , price number(20)
        , view_cnt number(10) default 0
        , reg_date date default sysdate
        , ptype varchar2(100)
);

insert into product 
values (1, '상품1', '원래위치','/project1/images/DVD.ico','내용~',10000, 0, sysdate, '남성');

