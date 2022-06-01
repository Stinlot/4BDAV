SET SERVEROUTPUT ON

DECLARE 

    id_vol VARCHAR2(20):= 'BA270';
    departure_city VARCHAR2(20) := 'Rome';
    arrival_city VARCHAR2(20) := 'Paris';
    departure_date DATE;
    arrival_date DATE;
    
BEGIN

    departure_date:= TO_DATE('06/01/2022 10:15','MM/DD/YYYY HH24:MI');
    arrival_date:= TO_DATE('06/01/2022 12:15','MM/DD/YYYY HH24:MI');

    DBMS_OUTPUT.PUT_LINE('manager_numbers: ' ||departure_date);
    INSERT INTO HR.vol VALUES(departure_date,arrival_date,departure_city,arrival_city,id_vol);


END;