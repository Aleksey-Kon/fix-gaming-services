@echo off
cls
:start
echo �� ����� ���஡����� ᪠��� � ��⠭����� gaming services ��⮬���᪨,
echo ����� �� ࠡ���� �.� � ���� ������ �������� ��뫪� � �㤥� ������� �� ��᫥���� �����. �� � ��� �� �㤥� ࠡ����.
echo ���� �� ����� ᪠��� gaming services � ����� � ��⠭����� ��.
echo 1. ��筠� ��⠭����
echo 2. ��⮬���᪠� ��⠭����
set /p choice=������ ���� 
if '%choice%'=='1' = goto 1
if '%choice%'=='2' = goto 2
goto start
:1
echo ��३��� �� ᠩ� � ��⠢�� ��뫪� � ᯥ樠�쭮� ����, ��᫥ 祣� ᪠砩� Microsoft.GamingServices_"version"_neutral_~_8wekyb3d8bbwe.appxbundle. ��᫥ 祣� ��⠭���� 2 ������
echo �������� ��뫪�, (�� ���뢠��) ��᫥ ������ �� �㤥� ��७��ࠢ����� �� ᠩ� ��� ���� �� �����.
echo https://www.microsoft.com/store/productId/9MWPM2CQNLHN
pause
start https://store.rg-adguard.net/
goto exit
goto start
:2
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
goto exit
:exit
pause