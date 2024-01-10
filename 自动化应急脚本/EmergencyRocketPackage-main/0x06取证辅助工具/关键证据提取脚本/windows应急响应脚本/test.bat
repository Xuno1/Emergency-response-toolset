@echo off
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo System Information >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
systeminfo | findstr /B /C:"OS" > System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo Hostname >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
hostname >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo Users>> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
net users >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo Route table >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
route print >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo Netstat INformation>> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
netstat -ano >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo Firewall State >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
netsh firewall show state >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo Firewall configuration >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
netsh firewall show config >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo Scheduled tasks >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
schtasks /query /fo LIST /v >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo tasklist >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
tasklist /SVC >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo net start >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
net start >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo driverquery >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
DRIVERQUERY >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo Wmic hotfix >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
wmic qfe get Caption,Description,HotFixID,InstalledOn >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo reg queries - elavated >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo reg queries - elavated >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
sc qc Spooler >> System_Details.txt
accesschk.exe -ucqv Spooler >> System_Details.txt
accesschk.exe -uwcqv "Authenticated Users" * >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo upnhosts - elavated >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
sc qc upnphost >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt
echo End of Script >> System_Details.txt
echo --------------------------------------------------------------------------------------------------- >> System_Details.txt