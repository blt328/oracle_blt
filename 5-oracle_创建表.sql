
--������
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

--DDL�﷨
--������
alter table t_user add (posi varchar2(30) default '' not null);
--�޸�������
alter table t_user modify (posi number);
--�޸�����
alter table t_user rename column posi to posi_n;
--ɾ����
alter table t_user drop column posi_n;
--�޸ı���
alter table t_user rename to  t_u;
alter table t_u rename to  t_user;


--DML�﷨
--��������
insert into t_user values('С��','��','����','����',175,29,10000);
insert into t_user values('С��','Ů','����','����',165,26,9000);
--ɾ������
delete t_user a where a.user_name='С��';
--�޸�����
update t_user a set a.age=31 where a.user_name='С��';
--��ѯ����
select * from t_user a where a.user_name='С��';



