@echo off
chcp 65001
:login
cls
color B
title RAFOU's Multi Tools
mode con lines=15 cols=90
echo Connecte toi:
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗     ███████╗
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     ███████╗
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     ╚════██║
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗███████║
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
echo.
set /p user=Entrez votre nom: 
echo.
set /p pass=Entrez votre mot de passe: 
if %user% == root if %pass% == root goto :main 
echo Mauvais mot de passe, essayez encore...
timeout 3 >nul
goto :login
:main
mode con lines=30 cols=90
cls
color B
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗     ███████╗
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     ███████╗
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     ╚════██║
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗███████║
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
echo.
echo ========================================				    
echo.
echo Bienvenue dans MULTI TOOLS 
echo.
echo ======================================== 
echo.
echo 0 - QUITTER 
echo.
echo 1 - Pinger   
echo.
echo 2 - Ip-Lookup
echo.
echo 3 - Ip-Tracer
echo.
echo 4 - Name-Lookup
echo.
echo ========================================
:mainlogo
set /p main=Choisissez votre mode: 
if %main% == 0 taskkill -im cmd.exe
if %main% == 1 goto :pinger 
if %main% == 2 goto :ip-lookup
if %main% == 3 goto :ip-tracer
if %main% == 4 goto :namelookup
cls
goto :main






:pinger
mode con lines=20 cols=50
title Pinger by RAFOU#8331
cls
color c
echo.
echo ██████╗ ██╗███╗   ██╗ ██████╗ ███████╗██████╗ 
echo ██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝██╔══██╗
echo ██████╔╝██║██╔██╗ ██║██║  ███╗█████╗  ██████╔╝
echo ██╔═══╝ ██║██║╚██╗██║██║   ██║██╔══╝  ██╔══██╗
echo ██║     ██║██║ ╚████║╚██████╔╝███████╗██║  ██║
echo ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝
echo.
echo ========================================        
echo	      Discord: RAFOU#8331
echo ======================================== 
echo        0 - QUITTER
echo        1 - Choisir une IP
echo        2 - Revenir au Menu        
echo ========================================
set /p main=Choisisser votre mode: 
if %main% == 0 taskkill -im cmd.exe
if %main% == 1 goto :pingers 
if %main% == 2 goto :exit
goto :pinger
:pingers
cls
echo.
echo ██████╗ ██╗███╗   ██╗ ██████╗ ███████╗██████╗ 
echo ██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝██╔══██╗
echo ██████╔╝██║██╔██╗ ██║██║  ███╗█████╗  ██████╔╝
echo ██╔═══╝ ██║██║╚██╗██║██║   ██║██╔══╝  ██╔══██╗
echo ██║     ██║██║ ╚████║╚██████╔╝███████╗██║  ██║
echo ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝
echo.
set /p x=IP de la cible:
echo.
echo ========================================================
mode con lines=20 cols=60
PING -n 1 %x% | FIND "TTL="
IF ERRORLEVEL 1 (echo L'IP est deconnecter...)               
set /a ZULA=(%Random%%%9)+1
color %ZULA%
ping -t 1 0 10 127.0.0.1 >nul
GoTo :top+-
:choice
set /p =Voulez vous quitter Pinger ?{Y/N}?
if /I "%c%" EQU "y" goto :q
if /I "%c%" EQU "n" goto :w
goto :choice
:q
echo au revoir :)
timeout /t 2 >nul
exit 
:w
:top
PING -n 1 %x% | FIND "TTL="
IF ERRORLEVEL 1 (echo L'IP est déconnectée ...)
set /a color=(%Random%%%9)+1
color %color%
ping -t 1 0 10 127.0.0.1 >nul
GoTo :top+-





:ip-lookup
mode con lines=15 cols=70
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
cls
title IP LOOKUP by RAFOU#8331
cls
color c
echo.
echo ██╗██████╗     ██╗      ██████╗  ██████╗ ██╗  ██╗██╗   ██╗██████╗ 
echo ██║██╔══██╗    ██║     ██╔═══██╗██╔═══██╗██║ ██╔╝██║   ██║██╔══██╗
echo ██║██████╔╝    ██║     ██║   ██║██║   ██║█████╔╝ ██║   ██║██████╔╝
echo ██║██╔═══╝     ██║     ██║   ██║██║   ██║██╔═██╗ ██║   ██║██╔═══╝ 
echo ██║██║         ███████╗╚██████╔╝╚██████╔╝██║  ██╗╚██████╔╝██║     
echo ╚═╝╚═╝         ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝
echo.
echo ========================================        
echo	      Discord: RAFOU#8331
echo ======================================== 
echo        0 - QUITTER
echo        1 - Choisir une IP
echo        2 - Revenir au Menu
echo ========================================
set /p main=Choisissez votre mode: 
if %main% == 0 taskkill -im cmd.exe
if %main% == 1 goto :iplookupchoix
if %main% == 2 goto :exit
goto :ip-lookup
:iplookupchoix
cls
color a
echo.
echo ██╗██████╗     ██╗      ██████╗  ██████╗ ██╗  ██╗██╗   ██╗██████╗ 
echo ██║██╔══██╗    ██║     ██╔═══██╗██╔═══██╗██║ ██╔╝██║   ██║██╔══██╗
echo ██║██████╔╝    ██║     ██║   ██║██║   ██║█████╔╝ ██║   ██║██████╔╝
echo ██║██╔═══╝     ██║     ██║   ██║██║   ██║██╔═██╗ ██║   ██║██╔═══╝ 
echo ██║██║         ███████╗╚██████╔╝╚██████╔╝██║  ██╗╚██████╔╝██║     
echo ╚═╝╚═╝         ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝   
echo.
set ip=127.0.0.1
set /p ip=IP de la Cible:
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
mode con lines=20 cols=80
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
rem echo Msgbox HTTPGET,vbSystemModal+vbOKOnly+vbInformation, "IP Info" >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
echo.
rem echo En attente de réponses de l'API. . .
echo  Recherche d'adresse IP. . .
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto :response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto :checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Acune réponses de l'API...
echo.
pause
goto :menu
:response_exist
cls
echo.
for /f "delims= 	" %%i in ('findstr /i "ip hostname city region country loc org postal" %temp%\response.txt') do (
	set data=%%i
	set data=!data:,=!
	set data=!data:""=Not Listed!
	set data=!data:"=!
	set data=!data:ip:=IP:		!
	set data=!data:hostname:=Hostname:	!
	set data=!data:city:=City:		!
	set data=!data:region:=State:	!
	set data=!data:country:=Country:	!
	set data=!data:loc:=Location:	!
	set data=!data:org:=ISP:		!
	set data=!data:postal:=Postal:	!
	echo !data!
)
echo.
echo ========================================        
echo	      Discord: RAFOU#8331
echo ======================================== 
echo        0 - QUITTER
echo        1 - Choisir une IP
echo        2 - Revenir au Menu
echo ========================================
echo.
set /p mainiplookup=Choisissez votre mode: 
if %mainiplookup% == 0 taskkill -im cmd.exe
if %mainiplookup% == 1 goto :iplookupchoix
if %mainiplookup% == 2 goto :exit
goto :response_exist
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
if '%ip%'=='' goto menu
goto iplookup





:ip-tracer
title IP TRACER by RAFOU#8331
mode con lines=15 cols=70
cls
color 3
echo.
echo ██╗██████╗     ████████╗██████╗  █████╗  ██████╗███████╗██████╗ 
echo ██║██╔══██╗    ╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗
echo ██║██████╔╝       ██║   ██████╔╝███████║██║     █████╗  ██████╔╝
echo ██║██╔═══╝        ██║   ██╔══██╗██╔══██║██║     ██╔══╝  ██╔══██╗
echo ██║██║            ██║   ██║  ██║██║  ██║╚██████╗███████╗██║  ██║
echo ╚═╝╚═╝            ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝╚═╝  ╚═╝
echo.
echo ========================================        
echo	      Discord: RAFOU#8331
echo ======================================== 
echo        0 - QUITTER
echo        1 - Choisir une IP
echo        2 - Revenir au Menu
echo ========================================
set /p main=Choisissez votre mode: 
if %main% == 0 taskkill -im cmd.exe
if %main% == 1 goto :ip-tracer-choix
if %main% == 2 goto :exit
:ip-tracer-choix
cls
echo.
echo ██╗██████╗     ████████╗██████╗  █████╗  ██████╗███████╗██████╗ 
echo ██║██╔══██╗    ╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗
echo ██║██████╔╝       ██║   ██████╔╝███████║██║     █████╗  ██████╔╝
echo ██║██╔═══╝        ██║   ██╔══██╗██╔══██║██║     ██╔══╝  ██╔══██╗
echo ██║██║            ██║   ██║  ██║██║  ██║╚██████╗███████╗██║  ██║
echo ╚═╝╚═╝            ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝╚═╝  ╚═╝
echo.
set /p ipcible=IP de la Cible: 
cls
echo Cela peux prendre plusieurs secondes voir minutes.
for /f "skip=2 tokens=8" %%d in ('tracert -4 -d %ipcible%') do (
  echo %%d
echo %%d
  )>>%ipcible%.txt
echo.
cls
echo.
echo ========================================
echo.
echo Un fichier .txt contenant chaque étape du chemin 
echo emprunté à était créer dans votre répertoire.
echo.
echo ======================================== 
echo        0 - QUITTER
echo        1 - Choisir une IP
echo        2 - Revenir au Menu
echo ========================================
set /p main=Choisissez votre mode: 
if %main% == 0 taskkill -im cmd.exe
if %main% == 1 goto :ip-tracer-choix
if %main% == 2 goto :exit

:namelookup
mode con lines=15 cols=95
title NAME LOOKUP by RAFOU#8331
cls
color e
echo.
echo ███╗   ██╗ █████╗ ███╗   ███╗███████╗    ██╗      ██████╗  ██████╗ ██╗  ██╗██╗   ██╗██████╗ 
echo ████╗  ██║██╔══██╗████╗ ████║██╔════╝    ██║     ██╔═══██╗██╔═══██╗██║ ██╔╝██║   ██║██╔══██╗
echo ██╔██╗ ██║███████║██╔████╔██║█████╗      ██║     ██║   ██║██║   ██║█████╔╝ ██║   ██║██████╔╝
echo ██║╚██╗██║██╔══██║██║╚██╔╝██║██╔══╝      ██║     ██║   ██║██║   ██║██╔═██╗ ██║   ██║██╔═══╝ 
echo ██║ ╚████║██║  ██║██║ ╚═╝ ██║███████╗    ███████╗╚██████╔╝╚██████╔╝██║  ██╗╚██████╔╝██║     
echo ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝    ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝
echo. 
echo ========================================        
echo	      Discord: RAFOU#8331
echo ======================================== 
echo        0 - QUITTER
echo        1 - Choisir une IP
echo        2 - Revenir au Menu
echo ========================================
set /p namelookupchoix=Choisissez votre mode: 
if %namelookupchoix% == 0 taskkill -im cmd.exe
if %namelookupchoix% == 1 goto :ipnamelookup
if %namelookupchoix% == 2 goto :exit
cls
goto :namelookup
:ipnamelookup
cls
mode con lines=15 cols=95
echo.
echo ███╗   ██╗ █████╗ ███╗   ███╗███████╗    ██╗      ██████╗  ██████╗ ██╗  ██╗██╗   ██╗██████╗ 
echo ████╗  ██║██╔══██╗████╗ ████║██╔════╝    ██║     ██╔═══██╗██╔═══██╗██║ ██╔╝██║   ██║██╔══██╗
echo ██╔██╗ ██║███████║██╔████╔██║█████╗      ██║     ██║   ██║██║   ██║█████╔╝ ██║   ██║██████╔╝
echo ██║╚██╗██║██╔══██║██║╚██╔╝██║██╔══╝      ██║     ██║   ██║██║   ██║██╔═██╗ ██║   ██║██╔═══╝ 
echo ██║ ╚████║██║  ██║██║ ╚═╝ ██║███████╗    ███████╗╚██████╔╝╚██████╔╝██║  ██╗╚██████╔╝██║     
echo ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝    ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝
echo. 
set /p ipname=IP de la Cible: 
cls
echo ========================================
echo.
mode con lines=20 cols=95
echo.
echo ========================================
echo.
Nslookup %ipname%
IF ERRORLEVEL 1 goto :namefail
echo.
echo ========================================
echo        0 - QUITTER 
echo        1 - Choisir une IP
echo        2 - Revenir au Menu
echo ========================================
echo.
set /p namelookupchoix=Choisissez votre mode: 
if %namelookupchoix% == 0 taskkill -im cmd.exe
if %namelookupchoix% == 1 goto :ipnamelookup
if %namelookupchoix% == 2 goto :exit
cls
goto :namelookup
goto :namelookup
:namefail
echo Name Lookup ne parvient pas à trouver un nome de domaine existant ...
echo Retour au menu dans 5 secondes.
timeout 5 >nul
goto :namelookup

pause
:exit
goto :main