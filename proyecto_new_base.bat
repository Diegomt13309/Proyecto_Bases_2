@echo off
set Nbase=
set /p Nbase=Indique el nombre de la base de datos: 
REM guardamos la base para crear tabla de esa base?
echo %Nbase% 1> parametros.ini
REM la -S es especifica con la computadora personal? preguntar
sqlcmd -U sa -P root -v baseN="%Nbase%" -S LAPTOP-0F63CAUK\SQLEXPRESS -i proyecto_new_base.sql 
exit