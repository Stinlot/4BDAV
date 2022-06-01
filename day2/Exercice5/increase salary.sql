SET SERVEROUTPUT ON

CREATE OR REPLACE FUNCTION f_increase_salary (p_employee_id employees.employee_id%TYPE, p_percentage NUMBER)
RETURN NUMBER
AS salaire_increased employees.salary%TYPE;
BEGIN
SELECT salary * (p_percentage+1)INTO salaire_increased
FROM EMPLOYEES
WHERE EMPLOYEE_ID = p_employee_id;
RETURN salaire_increased;

END;
/

DECLARE

    employee_id HR.employees.employee_id%TYPE:= 103;

BEGIN
    UPDATE hr.employees SET employees.salary = (f_increase_salary(employee_id,10)) WHERE employees.employee_id = employee_id;
    DBMS_OUTPUT.PUT_LINE('updated employee : ' || employee_id || 'salary');
END;
