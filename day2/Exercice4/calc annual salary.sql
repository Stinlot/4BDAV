SET SERVEROUTPUT ON

DECLARE 

    CURSOR cur IS SELECT salaire,nom FROM HR.Pilote;
    salary HR.pilote.salaire%TYPE;
    nom HR.pilote.nom%TYPE;
    
BEGIN

    OPEN cur;
    LOOP
        FETCH cur into salary,nom;
        EXIT WHEN cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Nom: ' || nom || ' salaire annuel: ' || (salary*12));   
    END LOOP;
    CLOSE cur;
   

END;