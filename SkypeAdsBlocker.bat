@echo off
NET SESSION >nul 2>&1 && goto noUAC
title.
set n=%0 %*
set n=%n:"=" ^& Chr(34) ^& "%
echo Set objShell = CreateObject("Shell.Application")>"%tmp%\cmdUAC.vbs"
echo objShell.ShellExecute "cmd.exe", "/c start " ^& Chr(34) ^& "." ^& Chr(34) ^& " /d " ^& Chr(34) ^& "%CD%" ^& Chr(34) ^& " cmd /c %n%", "", "runas", ^1>>"%tmp%\cmdUAC.vbs"
cscript "%tmp%\cmdUAC.vbs" //Nologo
del "%tmp%\cmdUAC.vbs"
exit /b
:noUAC

SET NEWLINE=^& echo.

ECHO.>>%WINDIR%\system32\drivers\etc\hosts
ECHO.>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "# Block Skype ads" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^# Block Skype ads>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "*.msads.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0	*.msads.net>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "*.msecn.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0	*.msecn.net>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "*.rad.msn.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0	*.rad.msn.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "a.ads2.msads.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 a.ads2.msads.net>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "ac3.msn.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 ac3.msn.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "ad.doubleclick.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 ad.doubleclick.net>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "adnexus.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 adnexus.net>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "*.adnxs.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 *.adnxs.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "ads1.msn.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 ads1.msn.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "ads2.msads.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 ads2.msads.net>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "aka-cdn-ns.adtech.de" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 aka-cdn-ns.adtech.de>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "apps.skype.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 apps.skype.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "b.ads2.msads.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 b.ads2.msads.net>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "bs.serving-sys.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 bs.serving-sys.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "cdn.atdmt.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 cdn.atdmt.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "cds26.ams9.msecn.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 cds26.ams9.msecn.net>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "db3aqu.atdmt.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 db3aqu.atdmt.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "ec.atdmt.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 ec.atdmt.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "flex.msn.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 flex.msn.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "g.msn.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 g.msn.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "live.rads.msn.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 live.rads.msn.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "msntest.serving-sys.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 msntest.serving-sys.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "sO.2mdn.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 sO.2mdn.net>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "secure.flashtalking.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 secure.flashtalking.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "static.2mdn.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 static.2mdn.net>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "spe.atdmt.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 spe.atdmt.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "secure-sin.adnxs.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 secure-sin.adnxs.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "logi10.xiti.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 logi10.xiti.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "*.everesttech.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 *.everesttech.net>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "d.adroll.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0 d.adroll.com>>%WINDIR%\system32\drivers\etc\hosts