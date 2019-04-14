
--关系表达式
select * from t_sales a where a.sales_amt > 5000;

--逻辑表达式
select *
  from t_sales a
 where a.sales_amt > 5000
   and a.dept_code = 'B';

--case,decode
select user_no,
       dept_code,
       case dept_code
         when 'A' then
          'A部门'
         when 'B' then
          'B部门'
         else
          '未知'
       end case_col1,
       decode(dept_code, 'A', 'A部门', 'B', 'B部门', '未知') decode_col,
       case
         when sales_amt < 5000 then
          '不合格'
         when sales_amt >= 5000 and sales_amt < 10000 then
          '合格'
         else
          '优秀'
       end case_col2
  from t_sales;

--between
select * from t_sales a where a.sales_amt between 4563 and 6794;
select * from t_sales a where a.user_no between '002' and '004';
