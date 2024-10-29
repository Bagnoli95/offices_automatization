@echo off
REM Revisa si se ha pasado un parámetro
if "%1"=="" (
    echo No se ha proporcionado ningun parametro.
    exit /b
)

set PARAM=%1
set OPTION=%2

echo Ejecutando con parametro: %PARAM%
echo Ejecutando con opcion: %OPTION%
timeout /t 2

REM Abre Windows Terminal con una pestaña de PowerShell y ejecuta un comando dependiendo del parametro
if "%PARAM%"=="wildfly" (
    REM Abre la primera pestaña de PowerShell para iniciar Wildfly
    wt --title "Wildfly Local" powershell.exe -NoExit -Command "wildfly_run" ;
    exit

) else if "%PARAM%"=="flush" (
    REM Elimiana todos los datos de la carpeta de descarga y papelera de reciclaje
    start wt --title "Borrar Descargas, Pepelera" -p "Windows PowerShell" powershell -Command "flush.bat"
    exit

) else if "%PARAM%"=="tunnel" (
    if "%OPTION%" == "-p"(
        start wt --title "tunnel" powershell.exe -NoExit -Command "ssh -L 1523:10.5.3.22:1522 -L 1524:10.5.3.5:1521 -L 1525:10.5.2.108:1521 -L 1527:10.5.3.10:1521 -L 1526:10.5.3.7:1521 -L 1527:10.5.1.26:8080 -L 1425:10.5.1.24:8080 -L 1426:10.5.1.43:8080 -L 1427:10.5.1.35:8080 -L 1428:10.5.1.18:8085 -L 1429:10.5.1.18:8080 -L 1430:10.5.2.53:9990 asosa@10.5.2.53"
        if ERRORLEVEL 1 (
            echo Error al intentar abrir el túnel SSH.
        )
        exit
    ) else (
        start wt --title "tunnel" powershell.exe -NoExit -Command "ssh -L 1523:10.5.3.22:1522 -L 1524:10.5.3.5:1521 -L 1525:10.5.2.108:1521 -L 1527:10.5.3.10:1521 -L 1526:10.5.3.7:1521 -L 1527:10.5.1.26:8080 -L 1425:10.5.1.24:8080 -L 1426:10.5.1.43:8080 -L 1427:10.5.1.35:8080 -L 1428:10.5.1.18:8085 -L 1429:10.5.1.18:8080 -L 1430:10.5.2.53:9990 asosa@10.5.2.53"
        if ERRORLEVEL 1 (
            echo Error al intentar abrir el túnel SSH.
        )
        exit
    )

) else if "%PARAM%"=="test" (
    REM Ejecuta el comando de túnel en una única pestaña de PowerShell
    start wt -p "Windows PowerShell" powershell -Command "ssh -L 1523:10.5.3.22:1522 -L 1524:10.5.3.5:1521 -L 1525:10.5.2.108:1521 -L 1527:10.5.3.10:1521 -L 1526:10.5.3.7:1521 -L 1527:10.5.1.26:8080 -L 1425:10.5.1.24:8080 -L 1426:10.5.1.43:8080 -L 1427:10.5.1.35:8080 -L 1428:10.5.1.18:8085 -L 1429:10.5.1.18:8080 -L 1430:10.5.2.53:9990 asosa@10.5.2.53;"
    exit

) else (
    echo Parametro no reconocido.
)