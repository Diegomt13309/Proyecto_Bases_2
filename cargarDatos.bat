@echo off
set /p Ntabla=<tabla.ini

set archivo=
set /p archivo=Indique el nombre del archivo: 

set Nbase=
set /p Nbase=Indique el nombre de la base: 

sqlcmd -U sa -P root -v tablaN="%Ntabla%" baseN=%Nbase% archivoN=%archivo%  -S LAPTOP-0F63CAUK\SQLEXPRESS -i cargarCSV.sql >> "proyecto1.txt"
exit