
--��ϵ���ʽ
select * from t_sales a where a.sales_amt > 5000;

--�߼����ʽ
select *
  from t_sales a
 where a.sales_amt > 5000
   and a.dept_code = 'B';

--case,decode
select user_no,
       dept_code,
       case dept_code
         when 'A' then
          'A����'
         when 'B' then
          'B����'
         else
          'δ֪'
       end case_col1,
       decode(dept_code, 'A', 'A����', 'B', 'B����', 'δ֪') decode_col,
       case
         when sales_amt < 5000 then
          '���ϸ�'
         when sales_amt >= 5000 and sales_amt < 10000 then
          '�ϸ�'
         else
          '����'
       end case_col2
  from t_sales;

--between
select * from t_sales a where a.sales_amt between 4563 and 6794;
select * from t_sales a where a.user_no between '002' and '004';
