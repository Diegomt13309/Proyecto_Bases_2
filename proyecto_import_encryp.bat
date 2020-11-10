@echo off
REM Creado por Prof. Manuel Espinoza G.
set /p VClave=<clave.ini
set /p VRuta=<rutaBakImpt.ini

REM Comprime los archivos .mdf y .ldf en restore.7z
"C:\Program Files\7-Zip\7z.exe" a "%VRuta%\restore.7z" "%VRuta%\*.mdf" "%VRuta%\*_0.ldf" 

REM Encriptar import
"C:\Program Files\AESCrypt\aescrypt.exe" -e -p %VClave% "%VRuta%\restore.7z"


namedate.exe -Y -ZZ:"(F)Y-m-d(H-M-S).X" "%VRuta%\restore.7z.aes"

REM Borrar archivos 
del "%VRuta%\*.mdf"
del "%VRuta%\*_0.ldf"
del "%VRuta%\restore.7z"
REM Espera por 10 segundos
echo -----------------------------------------
echo Compresion y encriptacion exitoso.
echo -----------------------------------------
timeout 10
exit











