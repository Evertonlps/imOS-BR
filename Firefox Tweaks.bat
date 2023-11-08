@echo off
taskkill /f /im maintenanceservice.exe >nul 2>&1
taskkill /f /im uninstall.exe >nul 2>&1
net stop MozillaMaintenance >nul 2>&1
sc delete MozillaMaintenance >nul 2>&1
rmdir "C:\Program Files (x86)\Mozilla Maintenance Service" /s /q >nul 2>&1
del /f "C:\Program Files\Mozilla Firefox\maintenanceservice_installer.exe" >nul 2>&1
del /f "C:\Program Files\Mozilla Firefox\maintenanceservice.exe" >nul 2>&1
del /f "C:\Program Files\Mozilla Firefox\updater.exe" >nul 2>&1
Reg.exe add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableAppUpdate" /t REG_DWORD /d "1" /f
exit