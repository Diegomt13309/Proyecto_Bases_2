@echo off
REM Creado por Prof. Manuel Espinoza G.
REM Genera Archivo de prueba a.txt
set /p VClave=<clave.ini
set /p VRuta=<rutabakexport.ini
set /p VRutaA=<rutaBak.ini


REM Comprime el archivo .bak en export.7z
"C:\Program Files\7-Zip\7z.exe" a "%VRuta%\backup.7z" "%VRutaA%"

REM Encriptar export
"C:\Program Files\AESCrypt\aescrypt.exe" -e -p %VClave% "%VRuta%\backup.7z"

REM NameDate
namedate.exe -Y -ZZ:"(F)Y-m-d(H-M-S).X" "%VRuta%\backup.7z.aes">>aesj.ini

REM Borrar archivos 
del "%VRutaA%"
del "%VRuta%\backup.7z" 

echo -------------------------------------
echo compresion y encriptacion completada
echo -------------------------------------

pause
REM Espera por 10 segundos
REM timeout 10

exit











