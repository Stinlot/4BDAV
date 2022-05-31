sqlplus system@ORCL; --login system

CREATE USER stinlot IDENTIFIED BY oracle; --créer user
GRANT CREATE SESSION to stinlot; --ajout permission creation session

connect stinlot/oracle; --connexion user
