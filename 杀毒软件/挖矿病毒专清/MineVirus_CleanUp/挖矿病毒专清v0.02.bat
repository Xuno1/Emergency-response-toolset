@echo off 
echo.
echo.
color 1e
echo ****************************Please run with administrator privileges****************************
echo.
echo *************CleanUp Mine virus*************
echo.
echo ------------Step1 Stratup CleanUp------------
echo.
SchTasks /Delete  /F /TN "GpChec"
echo GpChec Clean Done
echo.
echo ------------Step2 Service CleanUp------------
echo.
sc stop cspsvc
echo Service cspsvc stop Done
echo.
sc delete cspsvc
echo Service cspsvc clean Done
echo.
echo ------------Step3 Process CleanUp------------  
echo.
netsh interface portproxy delete v4tov4 listenport=757
echo port 757 closed
echo.
netsh interface portproxy delete v4tov4 listenport=703
echo port 703 closed
echo.
cmd /c wmic process where "name='explorer.exe' and executablepath<>'%SystemDrive%\\windows\\explorer.exe'" delete
echo Clean Suspicious explorer Process Done
echo.
echo ------------Step4 Files CleanUp------------
echo.
rd /S/Q C:\\windows\\Fonts\\arial
echo DIR Fontsarial Cleaned
echo.
rd /S/Q C:\\windows\\Fonts\\Logs
echo DIR FontsLogs Cleaned
echo.
rd /S/Q C:\\windows\\Fonts\\temp
echo DIR Fontstemp Cleaned
echo.
rd /S/Q C:\\windows\\Fonts\\ttf
echo DIR Fontsttf Cleaned
echo.
del /F "C:\windows\SoftwareDistribution\config.xml"
echo FILE SoftwareDistributionconfig.xml Cleaned
echo.
del /F "C:\windows\system32\drivers\en-USGpCheck.ps1"
echo FILE en-USGpCheck.ps1 Cleaned
echo.
del /F "C:\windows\system32\drivers\WmiPrvSE.ps1"
echo FILE WmiPrvSE.ps1 Cleaned
echo.
del /F "C:\windows\System32\drivers\etc\services"
echo FILE services Cleaned
echo.
del /F "C:\windows\System32\drivers\etc\protocol"
echo FILE protocol Cleaned
echo.
del /F "C:\windows\System32\drivers\etc\networks"
echo FILE networks Cleaned
echo.
del /F "C:\windows\System32\drivers\etc\hosts"
echo FILE hosts Cleaned
echo.
del /F "C:\windows\system32\drivers\etc\lmhosts.sam"
echo FILE lmhosts.sam Cleaned
echo.
echo ------------Step5 Registry CleanUp------------
echo.
reg delete HKEY_LOCAL_MACHINE\SYSTEM\Software\Microsoft\DriversPath /f
echo  Virus registry cleanup
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Paths" /f
echo  Exclusion Paths registry cleanup 
echo.
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest /f /v UseLogonCredential /d 0
echo Firewall policy recovery
echo.
echo --------DONE--------------
echo.
echo.
pause