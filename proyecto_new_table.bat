@echo off
set /p var1=<base.ini
set Ntabla=
set /p Ntabla=Indique el nombre de la tabla: 
echo %Ntabla% 1> tabla.ini
sqlcmd -U sa -P root -v tablaN="%Ntabla%" base=%var1% -S LAPTOP-0F63CAUK\SQLEXPRESS -i proyecto_new_table.sql
 
exit