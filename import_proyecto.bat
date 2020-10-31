@echo off
set /p Nbase=<base.ini
set NDirectorio=
set /p NBaseRes=Indique el nombre de la nueva base de datos en donde quiere restaurar: 
sqlcmd -U sa -P root -v baseR="%NBaseRes%" baseN="%Nbase%" baseNL="%Nbase%_log" -S LAPTOP-0F63CAUK\SQLEXPRESS -i import_proyecto.sql
pause