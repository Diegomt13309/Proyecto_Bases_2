REM Creado por Prof. Manuel Espinoza G.
REM Genera Archivo de prueba a.txt
set /p VClave=<clave.ini
set /p VRuta=<rutaBakImpt.ini

REM Comprime el archivo .bak en export.7z
"C:\Program Files\7-Zip\7z.exe" a "%VRuta%prueba7zz.7z" base.ini tabla.ini 
REM Comprime los archivos del import en import.7z
REM "C:\Program Files\7-Zip\7z.exe" a a.7z a.txt 


REM Encriptar export
"C:\Program Files\AESCrypt\aescrypt.exe" -e -p %VClave% "%VRuta%prueba7zz.7z"

REM Encriptar import
REM "C:\Program Files\AESCrypt\aescrypt.exe" -e -p clave123 a.7z

REM Aplicar namedate para renombrar archivo (en carpeta local)
REM  F=File Y=año .... X=extensión
REM mismo archivo
namedate.exe -Y -ZZ:"(F)Y-m-d(H-M-S).X" prueba7zz.7z.aes

REM Borrar archivos a.txt y a.7z
REM del a.txt 1>nul 2 >nul
REM del a.7z 1>nul 2 >nul

REM Espera por 10 segundos
REM timeout 10

REM Vuelve a invocar el proceso
REM demo.bat











