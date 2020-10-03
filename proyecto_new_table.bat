@echo off
set /p var1=<parametros.ini
set Ntabla=
set /p Ntabla=Indique el nombre de la tabla: 
sqlcmd -U sa -P root -v tablaN="%Ntabla%" base=%var1% -S LAPTOP-0F63CAUK\SQLEXPRESS -i proyecto_new_table.sql
timeout 15 
exit