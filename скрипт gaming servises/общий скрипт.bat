@echo off
title 䨪� gaming services
echo ��� �ਢ������ �ਯ� ��� 䨪� gaming services
echo ������ ����ᥩ ���
pause
title 1
echo ------------------------
echo 㤠����� Gaming Services
echo ------------------------
powershell -ExecutionPolicy ByPass -command "get-appxpackage Microsoft.GamingServices | remove-AppxPackage -allusers"
reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PolicyCache\Microsoft.GamingServices_8wekyb3d8bbwe"
reg delete "HKEY_USERS\.DEFAULT\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.GamingServices_8wekyb3d8bbwe"
reg delete "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows NT\CurrentVersion\HostActivityManager\CommitHistory\Microsoft.GamingServices_8wekyb3d8bbwe!GamingServices"
reg delete "HKEY_USERS\S-1-5-19\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.GamingServices_8wekyb3d8bbwe"
reg delete "HKEY_USERS\S-1-5-19\Software\Microsoft\Windows NT\CurrentVersion\HostActivityManager\CommitHistory\Microsoft.GamingServices_8wekyb3d8bbwe!GamingServices"
echo -----------------------------
echo 㤠����� SoftwareDistribution
echo ----------------------------- 
del %SystemRoot%\SoftwareDistribution
mkdir %SystemRoot%\SoftwareDistribution
color 2
echo -------
echo �ᯥ譮
echo -------
color 7
title 2
echo -------------------------------
echo �஢�ઠ ��⥬� �� 楫��⭮���
echo -------------------------------
@echo on
sfc /scannow
@echo off
color 2
echo -------------------------------
echo �ᯥ譮
echo -------------------------------
color 7
title 3
echo --------------
echo ����� wsreset
echo --------------
%SystemRoot%\System32\WSReset.exe
color 2
echo -------
echo �ᯥ譮
echo -------
color 7
title 4
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
echo -------------------------
echo ��⠭���� gaming services
echo -------------------------
powershell -ExecutionPolicy ByPass -command "add-appxpackage -path C:\Microsoft.GamingServices_neutral___8wekyb3d8bbwe.AppxBundle"
del "C:\Microsoft.GamingServices_neutral___8wekyb3d8bbwe.AppxBundle"
color 2
echo -------
echo �ᯥ譮
echo -------
goto exit
:exit
echo ������� �ਯ� ��� �����
pause