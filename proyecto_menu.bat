@ECHO off
cls
:Optstart
cls
ECHO --Proyecto #1, Bases de Datos 2---
echo Integrantes: Moises Fernandez Alfaro, Djenane Hernandez Rodriguez, Diego Monterrey Benavides, Frank Martinez Galo
ECHO 1. Borrar y Crear Base de Datos
ECHO 2. Crear Tabla
ECHO 3. Cargar Excel
ECHO 4. Backup (Export)
ECHO 5. Restore (Import)
ECHO 0. Salir

set choice=
set /p choice=Indique la opcion correspondiente:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto OptNBase
if '%choice%'=='2' goto OptNTabla
if '%choice%'=='3' goto OptCargarCSV
if '%choice%'=='4' goto OptExport
if '%choice%'=='5' goto OptImport
if '%choice%'=='0' goto OptSalir

ECHO "%choice%" Opcion incorrecta.
pause
ECHO.
goto Optstart

:OptNBase
start proyecto_new_base.bat
goto Optstart

:OptNTabla
start proyecto_new_table.bat
goto Optstart

:OptCargarCSV
start cargarDatos.bat
goto Optstart

:OptExport
start export_proyecto.bat
goto Optstart

:OptImport
start import_proyecto.bat
goto Optstart

:OptSalir
ECHO Sale del programa
goto Optend
