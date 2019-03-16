@echo off
cd sql
CLS
@echo Please Wait, the .sql file are being imported..
mysql -u root restaurant < restaurant.sql
exit 0