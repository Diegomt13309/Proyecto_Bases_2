@echo off
set /p var1=<base.ini
set Ntabla=
set /p Ntabla=Indique el nombre de la tabla: 
echo %Ntabla%>tabla.ini
sqlcmd -U sa -P root -v tablaN="%Ntabla%" base=%var1% -S LAPTOP-0F63CAUK\SQLEXPRESS -i proyecto_new_table.sql>>salida.log
echo -------------------------------->>salida.log
echo --------------------------------------------------------
echo Tabla: %Ntabla% creada con exito en la base: %var1%.
echo --------------------------------------------------------
timeout 5
exit