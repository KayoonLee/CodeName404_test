insert into notice_board(notice_no,admin_nick,notice_subject,notice_content,
                  notice_date)
values(notice_board_num_seq.nextval,'admin@naver.com', '테스트입니다', '테스트입니다', sysdate);

INSERT INTO notice_board (notice_no,admin_nick,notice_subject,notice_content,
                  notice_date)
SELECT notice_board_num_seq.nextval,'nick'||level, '제목'||level, '내용'||level, SYSDATE
FROM dual
CONNECT BY level <= 65;

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
drop table notice_board purge;

create sequence notice_board_num_seq
increment by 1 start with 1 nocache;