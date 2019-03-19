--����
create table t_sales
(
user_no varchar2(10),--����
dept_code varchar2(10),--����
sales_amt number --���۽��
);

--��������
insert into t_sales values('001','A',3425);
insert into t_sales values('002','A',4563);
insert into t_sales values('003','A',6743);
insert into t_sales values('004','B',3865);
insert into t_sales values('005','B',6794);
insert into t_sales values('006','B',6895);

--�����ŷ��������¼�¼�����۽�����
select user_no,
       dept_code,
       sales_amt,
       lag(sales_amt, 1, sales_amt) over(partition by dept_code order by sales_amt desc) lag_amt, --��һ�����
       lag(sales_amt, 1, sales_amt) over(partition by dept_code order by sales_amt desc) - sales_amt diff_amt --������
  from t_sales;

--�����ŷ��������¼�¼�����۽�����
select user_no,
       dept_code,
       sales_amt,
       lead(sales_amt, 1, sales_amt) over(partition by dept_code order by sales_amt desc) lag_amt, --��һ�����
       sales_amt - lead(sales_amt, 1, sales_amt) over(partition by dept_code order by sales_amt desc) diff_amt --������
  from t_sales;


--�����ŷ�����ÿ��Ա�������۽��ռ��
select user_no,
       dept_code,
       sales_amt,
       sum(sales_amt) over(partition by dept_code) dept_all_amt, --�����ܽ��
       sales_amt / sum(sales_amt) over(partition by dept_code) amt_rt --Ա��ռ���Ž�����
  from t_sales;

--�����ŷ�����ÿ��Ա�������Ա�������۲��
select user_no,
       dept_code,
       sales_amt,
       max(sales_amt) over(partition by dept_code) dept_all_amt, --���������
       sales_amt - max(sales_amt) over(partition by dept_code) amt_rt --������
  from t_sales;
