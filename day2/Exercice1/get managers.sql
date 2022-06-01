SET SERVEROUTPUT ON

DECLARE
    
    manager_id jobs.job_id%TYPE;
    manager_number NUMBER(8,2) := 0;
    CURSOR cur IS SELECT JOB_ID FROM jobs WHERE JOB_TITLE LIKE '%Manager%';
    iteration NUMBER(8,2) := 0;
    employee_number NUMBER(8,2);
    
BEGIN
    
    SELECT COUNT(*) into employee_number from EMPLOYEES;
    OPEN cur;
    LOOP
        FETCH cur into manager_id;
        EXIT WHEN cur%NOTFOUND;
        SELECT count(*) into iteration FROM employees WHERE employees.job_id LIKE '%'||manager_id||'%';
        manager_number := manager_number + iteration;
        iteration:=0;
        
    END LOOP;
    CLOSE cur;
    DBMS_OUTPUT.PUT_LINE('manager_numbers: ' || manager_number);
        
    DBMS_OUTPUT.PUT_LINE('manager percentage: ' || (manager_number * 100 / employee_number) || '%');


END;