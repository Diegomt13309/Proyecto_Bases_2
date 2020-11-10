REM Creado por Prof. Manuel Espinoza G.
REM Genera Archivo de prueba a.txt
set /p VClave=<clave.ini
set /p VRuta=<rutaBakImpt.ini

REM Desencriptar
"C:\Program Files\AESCrypt\aescrypt.exe" -d -p %VClave% "%VRuta%\*.7z.aes"
pause

REM https://sevenzip.osdn.jp/chm/cmdline/commands/extract.htm
REM Descromprimir
"C:\Program Files\7-Zip\7z.exe" e "%VRuta%\*.7z" -o"%VRuta%"
pause

echo ---------------------------------------------
echo Desencriptacion y descompresion completada.
echo ---------------------------------------------
REM Espera por 10 segundos
timeout 10
exit