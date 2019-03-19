--��������
insert into t_score values ('1','����',80);
insert into t_score values ('2','����',83);
insert into t_score values ('3','����',70);
insert into t_score values ('4','����',68);
insert into t_score values ('5','����',54);

insert into t_score values ('1','Ӣ��',60);
insert into t_score values ('2','Ӣ��',73);
insert into t_score values ('3','Ӣ��',80);
insert into t_score values ('4','Ӣ��',58);
insert into t_score values ('5','Ӣ��',84);

--����ۺϺ���
select a.subject,
       sum(a.score) all_score, --�ܳɼ�
       min(a.score) min_score, --��ͳɼ�
       max(a.score) max_score, --��߳ɼ�
       avg(a.score) avg_score, --ƽ���ɼ�
       count(1) stu_cnt --����
  from t_score a
 group by a.subject;

--����������
select stu_no,
       subject,
       score,
       row_number() over(partition by a.subject order by a.score desc) rn --����
  from t_score a;

--����TOP 2
select stu_no, subject, score, rn
  from (select stu_no,
               subject,
               score,
               row_number() over(partition by a.subject order by a.score desc) rn --����
          from t_score a) t
 where t.rn <= 2;

