
--�����﷨
�﷨��CREATE INDEX index_name ON table (column[, column]...);
CREATE INDEX idx_t_sales_user_no ON t_sales (user_no);

--ִ�мƻ�������
select * from t_sales a where a.user_no='003';
--ִ�мƻ���ȫ��
select * from t_sales a where a.dept_code='A';
