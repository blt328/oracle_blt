--范围分区
CREATE TABLE t_sales_part_range
(
month_code VARCHAR2(30) NOT NULL,
dept_code  VARCHAR2(30) NOT NULL,
user_no    VARCHAR2(30) NOT NULL,
sales_amt  number
)
PARTITION BY RANGE (month_code)
(
    PARTITION p_201901 VALUES LESS THAN ('201902'),
    PARTITION p_201902 VALUES LESS THAN ('201903')
);


--list分区
CREATE TABLE t_sales_part_list
(
month_code VARCHAR2(30) NOT NULL,
dept_code  VARCHAR2(30) NOT NULL,
user_no    VARCHAR2(30) NOT NULL,
sales_amt  number
)
PARTITION BY LIST (month_code)
(
    PARTITION p_201901 VALUES('201902'),
    PARTITION p_201902 VALUES('201903'),
    PARTITION p_other VALUES (default)
);

--组合分区
CREATE TABLE t_sales_part_rang_list
(
month_code VARCHAR2(30) NOT NULL,
dept_code  VARCHAR2(30) NOT NULL,
user_no    VARCHAR2(30) NOT NULL,
sales_amt  number
)
PARTITION BY RANGE(month_code) SUBPARTITION BY LIST (dept_code)
(
  PARTITION p_201901 VALUES LESS THAN('201902')
  (
    SUBPARTITION p_201901_a VALUES ('a'),
    SUBPARTITION p_201901_b VALUES ('b'),
    SUBPARTITION p_201901_other VALUES (default)
  ),
  PARTITION p_201902 VALUES LESS THAN('201903')
  (
    SUBPARTITION p_201902_a VALUES ('a'),
    SUBPARTITION p_201902_b VALUES ('b'),
    SUBPARTITION p_201902_other VALUES (default)
  )
);




















