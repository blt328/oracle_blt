--ѧ����
create table t_student
(
stu_no varchar2(10),
stu_cls varchar2(20),
stu_bir date
);
--�ɼ���
create table t_score
(
stu_no varchar2(10),
subject varchar2(20),
score number
);

--��������
insert into t_student values ('1','1��',date'2011-05-01');
insert into t_student values ('2','1��',date'2011-06-01');
insert into t_student values ('3','1��',date'2011-07-01');
insert into t_student values ('5','1��',date'2011-08-01');

insert into t_score values ('1','��ѧ',90);
insert into t_score values ('2','��ѧ',93);
insert into t_score values ('3','��ѧ',60);
insert into t_score values ('4','��ѧ',58);


--�ڹ���
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
 inner join t_score b
    on a.stu_no = b.stu_no;

--�����
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
  left join t_score b
    on a.stu_no = b.stu_no;

--�ҹ���
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
 right join t_score b
    on a.stu_no = b.stu_no;

select b.stu_no, b.stu_cls, a.subject, a.score
  from t_score a
 left join t_student b
    on a.stu_no = b.stu_no;

--ȫ����
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
  full join t_score b
    on a.stu_no = b.stu_no;



----------------------------------------
--�ظ�ѧ��Ϊ2��ѧ����Ϣ
insert into t_student values ('2','1��',date'2011-06-01');

--�ڹ���
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
 inner join t_score b
    on a.stu_no = b.stu_no;

--�����
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
  left join t_score b
    on a.stu_no = b.stu_no;

--�ҹ���
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
 right join t_score b
    on a.stu_no = b.stu_no;

select b.stu_no, b.stu_cls, a.subject, a.score
  from t_score a
 left join t_student b
    on a.stu_no = b.stu_no;

--ȫ����
select a.stu_no, a.stu_cls, b.subject, b.score
  from t_student a
  full join t_score b
    on a.stu_no = b.stu_no;






