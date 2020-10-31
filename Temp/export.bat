
set /p Nbase=<base.ini
echo %Nbase%
set NDirectorio=
set /p NDirectorio=Indique el nombre de la carpeta para respaldar: 
echo %NDirectorio%
md C:\%NDirectorio%
sqlcmd -U sa -P root -v directN="%NDirectorio%" baseN="%Nbase%" -S LAPTOP-0F63CAUK\SQLEXPRESS -i export.sql
pause