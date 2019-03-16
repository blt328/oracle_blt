
--创建表
create table t_user
(
user_name varchar2(50),
sex varchar2(10),
addr varchar2(100),
edu varchar2(50),
height number,
age number,
income number
);

--DDL语法
--增加列
alter table t_user add (posi varchar2(30) default '' not null);
--修改列类型
alter table t_user modify (posi number);
--修改列名
alter table t_user rename column posi to posi_n;
--删除列
alter table t_user drop column posi_n;
--修改表名
alter table t_user rename to  t_u;
alter table t_u rename to  t_user;


--DML语法
--插入数据
insert into t_user values('小张','男','深圳','本科',175,29,10000);
insert into t_user values('小丽','女','深圳','本科',165,26,9000);
--删除数据
delete t_user a where a.user_name='小丽';
--修改数据
update t_user a set a.age=31 where a.user_name='小张';
--查询数据
select * from t_user a where a.user_name='小张';



