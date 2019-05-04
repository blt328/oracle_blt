--存储过程
create or replace procedure p_house_create_data(p_fm_dt date default sysdate - 1,
                                                p_to_dt date default sysdate) is
  /************************************************************
    author    :hf
    created   :2018-08-08
    purpose   :生成数据过程
  
    parameter        value
    p_fm_dt          2018-08-01(昨天)
    p_to_dt          2018-08-02(当日)
  *************************************************************/
  /************************************************************
    定义区间
  *************************************************************/
  v_sqlstate    varchar2(500);
  v_proc_name   varchar2(64) := 'p_house_create_data';
  v_fm_dt       date;
  v_to_dt       date;
  v_landlord_id varchar2(20);
  v_house_id    varchar2(20);
begin
  /************************************************************
    赋值区间
  *************************************************************/
  v_sqlstate := '赋值';
  v_fm_dt    := trunc(p_fm_dt, 'DD');
  v_to_dt    := trunc(p_to_dt, 'DD');
  /************************************************************
    计算区间
  *************************************************************/
  v_sqlstate := '开始';
  pkg_rpt_system.sys_log(v_proc_name, v_sqlstate, 'OK', null, null);

  v_sqlstate := '删除数据';
  delete t_landlord;
  delete t_tenant;
  delete t_house;
  delete t_employee;
  delete t_charge;
  commit;

  v_sqlstate := '生成房东信息数据';
  insert into t_landlord
  values
    ('001', '张强', '男', '13723870069', '001', '2010-03-12');
  commit;

  /************************************************************
    结束区间
  *************************************************************/
  v_sqlstate := '结束';
  pkg_rpt_system.sys_log(v_proc_name, v_sqlstate, 'OK', null, null);
  /************************************************************
    异常区间
  *************************************************************/
exception
  when others then
    rollback;
    pkg_rpt_system.sys_log(v_proc_name,
                           v_sqlstate,
                           'ERROR',
                           sqlcode,
                           substr(sqlerrm, 1, 3000));
    commit;
end p_house_create_data;


-----------------------------------------------------------------------------------
--包头
create or replace package pkg_rpt_system is
  procedure sys_log(p_proc_name varchar2,
                    p_sqlstate  varchar2,
                    p_state     varchar2,
                    p_sqlcode   varchar2,
                    p_substr    varchar2);

end pkg_rpt_system;

--包体
create or replace package body pkg_rpt_system is

  procedure sys_log(p_proc_name varchar2,
                    p_sqlstate  varchar2,
                    p_state     varchar2,
                    p_sqlcode   varchar2,
                    p_substr    varchar2) is
    /************************************************************
      author    :hf
      created   :2018-08-08
      purpose   :生成数据过程
    
      parameter        value
      p_fm_dt          2018-08-01(昨天)
      p_to_dt          2018-08-02(当日)
    *************************************************************/
    /************************************************************
      定义区间
    *************************************************************/
  begin
    insert into t_sys_log
    values
      (p_proc_name, p_sqlstate, p_state, p_sqlcode, p_substr, sysdate);
  end sys_log;
end pkg_rpt_system;














