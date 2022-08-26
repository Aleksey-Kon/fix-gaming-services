@echo off
cls
:start
echo Вы можете попробовать скачать и установить gaming services автоматически,
echo может не работать т.к я могу забыть обновить ссылку и будет качаться не последняя версия. Ну и она не будет работать.
echo Либо вы можете скачать gaming services в ручную и установить их.
echo 1. Ручная установка
echo 2. Автоматическая установка
set /p choice=Введите цифру 
if '%choice%'=='1' = goto 1
if '%choice%'=='2' = goto 2
goto start
:1
echo Перейдите на сайт и вставьте ссылку в специальное поле, после чего скачайте Microsoft.GamingServices_"version"_neutral_~_8wekyb3d8bbwe.appxbundle. После чего установите 2 кликом
echo Скопируйте ссылку, (не открывать) после нажатия вы будете перенаправленные на сайт где надо её ввести.
echo https://www.microsoft.com/store/productId/9MWPM2CQNLHN
pause
start https://store.rg-adguard.net/
goto exit
goto start
:2
echo -------------------------
echo загрузка gaming services
echo -------------------------
cd C:\
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&confirm=no_antivirus&id=1YWhb7cw8IbO8jgAUDyQY0a6peniW1QTw', 'Microsoft.GamingServices_neutral___8wekyb3d8bbwe.AppxBundle')"
echo -------
echo установка gaming services
echo -------
powershell -ExecutionPolicy ByPass -command "add-appxpackage -path C:\Microsoft.GamingServices_neutral___8wekyb3d8bbwe.AppxBundle"
del "C:\Microsoft.GamingServices_neutral___8wekyb3d8bbwe.AppxBundle"
color 2
echo -------
echo успешно
echo -------
goto exit
:exit
pause