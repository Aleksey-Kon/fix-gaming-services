@echo off
title 4
echo -------------------------
echo ����㧪� gaming services
echo -------------------------
cd C:\
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&confirm=no_antivirus&id=1YWhb7cw8IbO8jgAUDyQY0a6peniW1QTw', 'Microsoft.GamingServices_neutral___8wekyb3d8bbwe.AppxBundle')"
echo -------
echo ��⠭���� gaming services
echo -------
powershell -ExecutionPolicy ByPass -command "add-appxpackage -path C:\Microsoft.GamingServices_neutral___8wekyb3d8bbwe.AppxBundle"
del "C:\Microsoft.GamingServices_neutral___8wekyb3d8bbwe.AppxBundle"
color 2
echo -------
echo �ᯥ譮
echo -------
pause


