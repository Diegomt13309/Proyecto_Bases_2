REM @echo off
set Nbase=
set /p Nbase=Indique el nombre de la base de datos:
echo %Nbase%>base.ini
set /p param=<parametros.ini
echo %param%
pause
if "%param%" == "Pantalla" ( set param=CON ) else (if "%param%" == "Archivo" ( set param="proyecto1.txt") else ( set param=NUL))
echo %param%
pause
REM https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility?view=sql-server-ver15
sqlcmd -U sa -P root -v baseN="%Nbase%" -S LAPTOP-0F63CAUK\SQLEXPRESS -i proyecto_new_base.sql -o salida.log>CON
pause
 