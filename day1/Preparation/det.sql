CREATE TABLE STINLOT.DET 
(
  NUMCOM NUMBER(20) NOT NULL 
, NUMPRO NUMBER(20) NOT NULL 
, QTE NUMBER(10) NOT NULL 
, REMISE NUMBER(10) NOT NULL 
, CONSTRAINT DET_PK PRIMARY KEY 
  (
    NUMCOM 
  )
  ENABLE 
);