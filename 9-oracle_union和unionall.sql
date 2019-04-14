--union：对两个结果集进行并集操作，不包括重复行，同时进行默认规则的排序
select user_no, dept_code, sales_amt
  from t_sales
union
select user_no, dept_code, sales_amt
  from t_sales;

select sales_amt, user_no, dept_code
  from t_sales
union
select sales_amt, user_no, dept_code
  from t_sales;

--union：对两个结果集进行并集操作，包括重复行
select user_no, dept_code, sales_amt
  from t_sales
union all
select user_no, dept_code, sales_amt
  from t_sales;

select user_no, dept_code, sales_amt
  from t_sales a
 where a.sales_amt > 3000
union all
select user_no, dept_code, sales_amt
  from t_sales a
 where a.sales_amt <= 5000;
