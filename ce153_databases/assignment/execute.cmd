@echo off

c:\mysql\bin\mysql -vvv -u root -p < database_install.sql > "database_install_log.txt"
c:\mysql\bin\mysql -vvv -u root -p < query.sql > "query.txt"

pause
