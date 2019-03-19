--生成数据
insert into t_score values ('1','语文',80);
insert into t_score values ('2','语文',83);
insert into t_score values ('3','语文',70);
insert into t_score values ('4','语文',68);
insert into t_score values ('5','语文',54);

insert into t_score values ('1','英语',60);
insert into t_score values ('2','英语',73);
insert into t_score values ('3','英语',80);
insert into t_score values ('4','英语',58);
insert into t_score values ('5','英语',84);

--分组聚合函数
select a.subject,
       sum(a.score) all_score, --总成绩
       min(a.score) min_score, --最低成绩
       max(a.score) max_score, --最高成绩
       avg(a.score) avg_score, --平均成绩
       count(1) stu_cnt --人数
  from t_score a
 group by a.subject;

--分组排序函数
select stu_no,
       subject,
       score,
       row_number() over(partition by a.subject order by a.score desc) rn --排序
  from t_score a;

--分组TOP 2
select stu_no, subject, score, rn
  from (select stu_no,
               subject,
               score,
               row_number() over(partition by a.subject order by a.score desc) rn --排序
          from t_score a) t
 where t.rn <= 2;

