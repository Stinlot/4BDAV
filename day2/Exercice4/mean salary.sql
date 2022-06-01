SET SERVEROUTPUT ON

DECLARE 

    total_salaries number(8,2);
    min_age number(8,2) := 45;
    max_age number(8,2) := 55;
    pilote_number number(8,2):=0;
    
BEGIN

    SELECT SUM(pilote.salaire),COUNT(*) INTO total_salaries,pilote_number FROM HR.pilote WHERE pilote.age > min_age AND pilote.age < max_age;
    DBMS_OUTPUT.put_line('moyenne des salaires: ' || (total_salaries / pilote_number));

END;