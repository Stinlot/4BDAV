SET SERVEROUTPUT ON

DECLARE
    
    number_countries NUMBER(8,2);
    number_departments NUMBER(8,2);
    number_employees NUMBER(8,2);
    number_job_histories NUMBER(8,2);
    number_jobs NUMBER(8,2);
    number_locations NUMBER(8,2);
    number_regions NUMBER(8,2);

BEGIN

    SELECT COUNT(*) into number_countries from countries ;
    SELECT COUNT(*) into number_departments from departments ;
    SELECT COUNT(*) into number_employees from employees ;
    SELECT COUNT(*) into number_job_histories from job_history;
    SELECT COUNT(*) into number_jobs from jobs ;
    SELECT COUNT(*) into number_locations from locations ;
    SELECT COUNT(*) into number_regions from regions ;
    DBMS_OUTPUT.PUT_LINE('nombre entree countries: ' ||number_countries);
    DBMS_OUTPUT.PUT_LINE('nombre entree departments: ' ||number_departments);
    DBMS_OUTPUT.PUT_LINE('nombre entree employees: ' ||number_employees);
    DBMS_OUTPUT.PUT_LINE('nombre entree job_histories: ' ||number_job_histories);
    DBMS_OUTPUT.PUT_LINE('nombre entree jobs: ' ||number_jobs);
    DBMS_OUTPUT.PUT_LINE('nombre entree locations: ' ||number_locations);
    DBMS_OUTPUT.PUT_LINE('nombre entree regions: ' ||number_regions);

END;