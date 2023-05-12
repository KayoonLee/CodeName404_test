select * from MEMBER;

insert into MEMBER (id,nick,passwd,register) 
values('ps@20naver.com','찬근20','123',sysdate);

insert into notice_board(notice_no,admin_nick,notice_subject,notice_content,
                  notice_date)
values(notice_board_num_seq.nextval,'admin@naver.com', '테스트입니다', '테스트입니다', sysdate);

select * from notice_board;
select * from seq;

create table notice_board(
   notice_no number(20) primary key,
   admin_nick VARCHAR2(20) not null,
   notice_subject VARCHAR2(20) not null,
   notice_content VARCHAR2(20) not null,
   notice_date date,
   notice_readcount number default 0
)

create sequence notice_board_num_seq
increment by 1 start with 1 nocache;