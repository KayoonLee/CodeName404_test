create table adminmember(
admin_id varchar2(30) primary key,
admin_nick varchar2(20) not null,
admin_passwd varchar2(20) not null
);

select * from adminmember;
insert into adminmember values('kimsung1017@naver.com','관리자','admin');

ALTER TABLE adminmember MODIFY admin_id varchar2(30);
delete from adminmember;
