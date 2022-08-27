@echo off
title 1
echo ------------------------
echo удаление Gaming Services
echo ------------------------
powershell -ExecutionPolicy ByPass -command "get-appxpackage Microsoft.GamingServices | remove-AppxPackage -allusers"
reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PolicyCache\Microsoft.GamingServices_8wekyb3d8bbwe"
reg delete "HKEY_USERS\.DEFAULT\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.GamingServices_8wekyb3d8bbwe"
reg delete "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows NT\CurrentVersion\HostActivityManager\CommitHistory\Microsoft.GamingServices_8wekyb3d8bbwe!GamingServices"
reg delete "HKEY_USERS\S-1-5-19\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.GamingServices_8wekyb3d8bbwe"
reg delete "HKEY_USERS\S-1-5-19\Software\Microsoft\Windows NT\CurrentVersion\HostActivityManager\CommitHistory\Microsoft.GamingServices_8wekyb3d8bbwe!GamingServices"
color 2
echo -------
echo успешно
echo -------