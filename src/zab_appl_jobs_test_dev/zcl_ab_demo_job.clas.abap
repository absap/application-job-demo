CLASS zcl_ab_demo_job DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_apj_dt_exec_object .
    INTERFACES if_apj_rt_exec_object .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ab_demo_job IMPLEMENTATION.


  METHOD if_apj_dt_exec_object~get_parameters.
  ENDMETHOD.


  METHOD if_apj_rt_exec_object~execute.
    SELECT MAX(  id ) FROM ztab_demo_job INTO @DATA(lv_max).
    DATA(lv_next) = lv_max + 1.
    INSERT INTO ztab_demo_job VALUES @( VALUE #( id = lv_next ) ).
  ENDMETHOD.
ENDCLASS.
