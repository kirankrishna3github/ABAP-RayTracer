*&---------------------------------------------------------------------*
*& Report zart_returning_value
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zart_exporting_reference.

CLASS cl_foo DEFINITION.
  PUBLIC SECTION.
    METHODS foobar
      EXPORTING
        REFERENCE(e_value) TYPE int4.
ENDCLASS.

CLASS cl_foo IMPLEMENTATION.
  METHOD foobar.
    e_value = 42.
  ENDMETHOD.
ENDCLASS.


START-OF-SELECTION.
  DATA(instance) = NEW cl_foo( ).
  DATA value TYPE int4.
  instance->foobar( IMPORTING e_value = value ).
  WRITE value.
