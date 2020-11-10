@echo off
set /p Nbase=<base.ini
set NDirectorio=
set /p NDirectorio=Indique el nombre de la carpeta para respaldar: 
md C:\%NDirectorio%\export
md C:\%NDirectorio%\import
echo C:\%NDirectorio%\export\%Nbase%_respaldo.bak>rutaBak.ini
echo C:\%NDirectorio%\export\>rutabakexport.ini
echo C:\%NDirectorio%\import\>rutaBakImpt.ini
sqlcmd -U sa -P root -v directN="%NDirectorio%" baseN="%Nbase%" -S LAPTOP-0F63CAUK\SQLEXPRESS -i export_proyecto.sql >> salida.log
echo --------------------------->>salida.log
echo Export completado (backup).
timeout 5
exit




