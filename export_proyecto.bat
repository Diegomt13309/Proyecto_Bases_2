@echo off
set /p Nbase=<base.ini
set NDirectorio=
set /p NDirectorio=Indique el nombre de la carpeta para respaldar: 
md C:\%NDirectorio%
sqlcmd -U sa -P root -v directN="%NDirectorio%" baseN="%Nbase%" -S LAPTOP-0F63CAUK\SQLEXPRESS -i export_proyecto.sql
exit




