REM Creado por Prof. Manuel Espinoza G.
REM Genera Archivo de prueba a.txt
set /p VClave=<clave.ini
set /p VRuta=<rutabakexport.ini
set /p VRutaA=<rutaBak.ini


"C:\Program Files\AESCrypt\aescrypt.exe" -d -p %VClave% "%VRuta%\*.7z.aes"


REM https://sevenzip.osdn.jp/chm/cmdline/commands/extract.htm
"C:\Program Files\7-Zip\7z.exe" e "%VRuta%\*.7z" -o"%VRuta%"



echo ---------------------------------------------
echo Desencriptacion y descompresion completada.
echo ---------------------------------------------
timeout 5

exit











