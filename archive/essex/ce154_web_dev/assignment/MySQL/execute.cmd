@echo off

rem If you want the "interactive output" format in batch mode, use mysql -t
rem To echo to the output the commands that are executed, use mysql -vvv
rem for example:
rem mysql -t -vvv -u root -p < script.sql > log.txt

c:\mysql\bin\mysql -t -vvv -u root < script.sql > log.txt
