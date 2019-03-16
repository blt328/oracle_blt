--学生表
create table t_student
(
stu_no varchar2(10),
stu_cls varchar2(20),
stu_bir date
);
--成绩表
create table t_score
(
stu_no varchar2(10),
subject varchar2(20),
score number
);

--生成数据
insert into t_student values ('1','1班',date'2011-05-01');
insert into t_student values ('2','1班',date'2011-06-01');
insert into t_student values ('3','1班',date'2011-07-01');
insert into t_student values ('5','1班',date'2011-08-01');

insert into t_score values ('1','数学',90);
insert into t_score values ('2','数学',93);
insert into t_score values ('3','数学',60);
insert into t_score values ('4','数学',58);


--内关联
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
 inner join t_score b
    on a.stu_no = b.stu_no;

--左关联
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
  left join t_score b
    on a.stu_no = b.stu_no;

--右关联
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
 right join t_score b
    on a.stu_no = b.stu_no;

select b.stu_no, b.stu_cls, a.subject, a.score
  from t_score a
 left join t_student b
    on a.stu_no = b.stu_no;

--全关联
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
  full join t_score b
    on a.stu_no = b.stu_no;



----------------------------------------
--重复学号为2的学生信息
insert into t_student values ('2','1班',date'2011-06-01');

--内关联
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
 inner join t_score b
    on a.stu_no = b.stu_no;

--左关联
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
  left join t_score b
    on a.stu_no = b.stu_no;

--右关联
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
 right join t_score b
    on a.stu_no = b.stu_no;

select b.stu_no, b.stu_cls, a.subject, a.score
  from t_score a
 left join t_student b
    on a.stu_no = b.stu_no;

--全关联
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
  full join t_score b
    on a.stu_no = b.stu_no;






