--union����������������в����������������ظ��У�ͬʱ����Ĭ�Ϲ��������
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

--union����������������в��������������ظ���
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
