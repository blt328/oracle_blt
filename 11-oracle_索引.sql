
--索引语法
语法：CREATE INDEX index_name ON table (column[, column]...);
CREATE INDEX idx_t_sales_user_no ON t_sales (user_no);

--执行计划走索引
select * from t_sales a where a.user_no='003';
--执行计划走全表
select * from t_sales a where a.dept_code='A';
