@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
title Active Windows 10/11

ping -n 1 -l 1 google.com
if errorlevel 1 (errorWifi)
cls

:HomeN
wmic os get Caption | findstr /l /c:"Home N"
if errorlevel 1 (goto HomeSL)
color a
echo The version you are using is supported
slmgr /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
slmgr /skms kms8.msguides.com
slmgr /ato
exit


:HomeSL
wmic os get Caption | findstr /l /c:"Home Single Language"
if errorlevel 1 (goto HomeCS)
color a
echo The version you are using is supported
slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
slmgr /skms kms8.msguides.com
slmgr /ato
exit


:HomeCS
wmic os get Caption | findstr /l /c:"Home Country Specific"
if errorlevel 1 (goto Home)
color a
echo The version you are using is supported
slmgr /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
slmgr /skms kms8.msguides.com
slmgr /ato
exit


:Home
wmic os get Caption | findstr /l /c:"Home"
if errorlevel 1 (goto ProN)
color a
echo The version you are using is supported
slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
slmgr /skms kms8.msguides.com
slmgr /ato
exit


:ProN
wmic os get Caption | findstr /l /c:"Pro N"
if errorlevel 1 (goto Pro)
color a
echo The version you are using is supported
slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
slmgr /skms kms8.msguides.com
slmgr /ato
exit


:Pro
wmic os get Caption | findstr /l /c:"Pro"
if errorlevel 1 (goto EducationN)
color a
echo The version you are using is supported
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms8.msguides.com
slmgr /ato
exit


:EducationN
wmic os get Caption | findstr /l /c:"Education N"
if errorlevel 1 (goto Education)
color a
echo The version you are using is supported
slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
slmgr /skms kms8.msguides.com
slmgr /ato
exit


:Education
wmic os get Caption | findstr /l /c:"Education"
if errorlevel 1 (goto EnterpriseN)
color a
echo The version you are using is supported
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
slmgr /skms kms8.msguides.com
slmgr /ato
exit


:EnterpriseN
wmic os get Caption | findstr /l /c:"Enterprise N"
if errorlevel 1 (goto Enterprise)
color a
echo The version you are using is supported
slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
slmgr /skms kms8.msguides.com
slmgr /ato
exit


:Enterprise
wmic os get Caption | findstr /l /c:"Enterprise"
if errorlevel 1 (goto error)
color a
echo The version you are using is supported
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
slmgr /skms kms8.msguides.com
slmgr /ato
exit

:error
color c
echo The version you are using is not supported
pause
exit

:errorWifi
color c
echo No Wifi
pause
exit
