CREATE TABLE STINLOT.CLI
   (	"NUMCLI" NUMBER(20) NOT NULL, 
	"NOMCLI" VARCHAR2(20) NOT NULL, 
	"PAYS" VARCHAR2(20) NOT NULL, 
	"TEL" VARCHAR2(20) NOT NULL,
	"VILLE" NUMBER(10) NOT NULL, 
	"DEPT" VARCHAR2(20) NOT NULL, 
	"NAT" VARCHAR2(20) NOT NULL, 
	 CONSTRAINT "CLI_PK" PRIMARY KEY ("NUMCLI") ENABLE);