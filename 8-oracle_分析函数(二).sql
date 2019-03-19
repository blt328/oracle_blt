--建表
create table t_sales
(
user_no varchar2(10),--工号
dept_code varchar2(10),--部门
sales_amt number --销售金额
);

--生成数据
insert into t_sales values('001','A',3425);
insert into t_sales values('002','A',4563);
insert into t_sales values('003','A',6743);
insert into t_sales values('004','B',3865);
insert into t_sales values('005','B',6794);
insert into t_sales values('006','B',6895);

--按部门分组求上下记录的销售金额差异
select user_no,
       dept_code,
       sales_amt,
       lag(sales_amt, 1, sales_amt) over(partition by dept_code order by sales_amt desc) lag_amt, --上一条金额
       lag(sales_amt, 1, sales_amt) over(partition by dept_code order by sales_amt desc) - sales_amt diff_amt --差异金额
  from t_sales;

--按部门分组求上下记录的销售金额差异
select user_no,
       dept_code,
       sales_amt,
       lead(sales_amt, 1, sales_amt) over(partition by dept_code order by sales_amt desc) lag_amt, --下一条金额
       sales_amt - lead(sales_amt, 1, sales_amt) over(partition by dept_code order by sales_amt desc) diff_amt --差异金额
  from t_sales;


--按部门分组求每个员工的销售金额占比
select user_no,
       dept_code,
       sales_amt,
       sum(sales_amt) over(partition by dept_code) dept_all_amt, --部门总金额
       sales_amt / sum(sales_amt) over(partition by dept_code) amt_rt --员工占部门金额比率
  from t_sales;

--按部门分组求每个员工与最高员工的销售差额
select user_no,
       dept_code,
       sales_amt,
       max(sales_amt) over(partition by dept_code) dept_all_amt, --部门最大金额
       sales_amt - max(sales_amt) over(partition by dept_code) amt_rt --差异金额
  from t_sales;
