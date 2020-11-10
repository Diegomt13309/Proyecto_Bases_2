@echo off
set /p Ntabla=<tabla.ini

set archivo=
set /p archivo=Indique el nombre del archivo: 

set Nbase=
set /p Nbase=Indique el nombre de la base: 

sqlcmd -U sa -P root -v tablaN="%Ntabla%" baseN=%Nbase% archivoN=%archivo%  -S LAPTOP-0F63CAUK\SQLEXPRESS -i proyecto_cargarDatos.sql>>salida.log
echo ---------------------------->>salida.log
echo -------------------------------------------------------------
echo %archivo% cargado correctamente en la Base: %Ntabla%.
echo -------------------------------------------------------------
timeout 5
exit