--字符定义示例

create table t_filed_test
(
A char(10),
B varchar2(10)
);

insert into t_filed_test values ('abc','abc');

select a,b,length(a) l_a,length(b) l_b from t_filed_test;



--数字定义示例
create table t_filed_number
(
A number,
B number(5,2)
);

insert into t_filed_number values (100/3,100/3);

select * from t_filed_number;

select round(a,2) from t_filed_number;

