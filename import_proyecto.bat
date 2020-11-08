@echo off
set /p Nbase=<base.ini
set /p NRute=<rutaBak.ini
set /p NRute2=<rutaBakImpt.ini
set NDirectorio=
set /p NBaseRes=Indique el nombre de la nueva base de datos en donde quiere restaurar: 
sqlcmd -U sa -P root -v baseR="%NBaseRes%" baseN="%Nbase%" baseNL="%NRute%" ruteImp="%NRute2%" -S LAPTOP-0F63CAUK\SQLEXPRESS -i import_proyecto1.sql > "proyecto1.txt"
pause