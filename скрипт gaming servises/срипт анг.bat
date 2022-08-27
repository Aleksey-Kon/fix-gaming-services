@echo off
title fix gaming services
echo You are welcomed by the script for the gaming services fix
echo Aleksey Kon
pause
title 1
echo ----------------------
echo delete Gaming Services
echo ----------------------
powershell -ExecutionPolicy ByPass -command "get-appxpackage Microsoft.GamingServices | remove-AppxPackage -allusers"
reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PolicyCache\Microsoft.GamingServices_8wekyb3d8bbwe"
reg delete "HKEY_USERS\.DEFAULT\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.GamingServices_8wekyb3d8bbwe"
reg delete "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows NT\CurrentVersion\HostActivityManager\CommitHistory\Microsoft.GamingServices_8wekyb3d8bbwe!GamingServices"
reg delete "HKEY_USERS\S-1-5-19\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.GamingServices_8wekyb3d8bbwe"
reg delete "HKEY_USERS\S-1-5-19\Software\Microsoft\Windows NT\CurrentVersion\HostActivityManager\CommitHistory\Microsoft.GamingServices_8wekyb3d8bbwe!GamingServices"
echo ---------------------------
echo delete SoftwareDistribution
echo --------------------------- 
del %SystemRoot%\SoftwareDistribution
mkdir %SystemRoot%\SoftwareDistribution
color 2
echo ------------
echo successfully
echo ------------
color 7
title 2
echo ----------------------
echo system integrity check
echo ----------------------
@echo on
sfc /scannow
@echo off
color 2
echo ------------
echo successfully
echo ------------
color 7
title 3
echo -------------
echo start wsreset
echo -------------
%SystemRoot%\System32\WSReset.exe
color 2
echo ------------
echo successfully
echo ------------
color 7
title 4
cls
:start
echo You can try downloading and installing gaming services automatically,
echo it may not work because I may forget to update the link and not the latest version will swing. Well, it won't work.
echo Or you can download gaming services manually and install them.
echo 1. Manual installation
echo 2. Automatic installation
set /p choice=enter number 
if '%choice%'=='1' = goto 1
if '%choice%'=='2' = goto 2
goto start
:1
echo Go to the website and paste the link into a special field, then download Microsoft.GamingServices_"version"_neutral_~_8wekyb3d8bbwe.appxbundle. Then install 2 with a click
echo Copy the link, (not open) after clicking you will be redirected to the site where you need to enter it.
echo https://www.microsoft.com/store/productId/9MWPM2CQNLHN
pause
start https://store.rg-adguard.net/
goto exit
goto start
:2
echo ------------------------
echo download gaming services
echo ------------------------
cd C:\
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&confirm=no_antivirus&id=1YWhb7cw8IbO8jgAUDyQY0a6peniW1QTw', 'Microsoft.GamingServices_neutral___8wekyb3d8bbwe.AppxBundle')"
echo -----------------------
echo install gaming services
echo -----------------------
powershell -ExecutionPolicy ByPass -command "add-appxpackage -path C:\Microsoft.GamingServices_neutral___8wekyb3d8bbwe.AppxBundle"
del "C:\Microsoft.GamingServices_neutral___8wekyb3d8bbwe.AppxBundle"
color 2
echo ------------
echo successfully
echo ------------
goto exit
:exit
echo I hope the script helped you
pause