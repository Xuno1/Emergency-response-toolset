@echo off
echo "WindowsӦ�����ű�"
:����ԱȨ�޴�CMD���ڣ�ִ��bat�ű���
:������������룬��Ҫ�Ƚ��ű��ü��±��򿪣��ɳ��Խ��ı������ΪANSI���档
:1.ϵͳ������Ϣ
systeminfo>ϵͳ������Ϣ.txt

:2.����������Ϣ
ipconfig /all>����������Ϣ.txt

:3.�˿���Ϣ���
netstat -anob>�˿���Ϣ���.txt

:4.������Ϣ
wmic process get processid,parentprocessid,caption,commandline,executablepath,usermodetime,kernelmodetime,workingsetsize /value >������Ϣ1.txt
tasklist /v > ������Ϣ2.txt

:5.����λ��
net share >����λ��.txt

:6.�û�λ��
net user > �û����(netuser).txt
wmic useraccount > �û����(wmic).txt
net localgroup administrators>�û���.txt

:7.������
echo �����ļ���>������.txt
dir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp" >>������.txt
for %%i in ("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\*") do ( certutil -hashfile "%%i" md5 )>>������.txt
echo Run:>>������.txt
reg query HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run >>������.txt
for /f "tokens=1-3 delims= " %%a in ('reg query HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run') do (certutil -hashfile %%c md5)>>������.txt
reg query HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce >>������.txt
for /f "tokens=1-3 delims= " %%a in ('reg query HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce') do (certutil -hashfile %%c md5)>>������.txt
reg query HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run >>������.txt
for /f "tokens=1-3 delims= " %%a in ('reg query HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run') do (certutil -hashfile %%c md5)>>������.txt
reg query HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce >>������.txt
for /f "tokens=1-3 delims= " %%a in ('reg query HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce') do (certutil -hashfile %%c md5)>>������.txt
:reg query HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnceEx >>check.log

echo RunServices:>>������.txt
reg query HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce>>������.txt
reg query HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce>>������.txt
reg query HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices>>������.txt
reg query HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunServices>>������.txt

:8.IE�������¼
reg query "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TypedURLs" >IE�������¼.txt

:9.�����¼
reg query HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU >�����¼.txt
reg query HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths >>�����¼.txt

:10.����ǽ��Ϣ
netsh advfirewall firewall show rule name=all dir=in type=dynamic status=enabled >����ǽ��Ϣ.txt

:11.�ؼ��ļ�
echo "Shift|�Ŵ󾵺��ż��:" >�ؼ��ļ�.txt
certutil -hashfile C:\windows\system32\sethc.exe md5 >>�ؼ��ļ�.txt
certutil -hashfile C:\windows\system32\magnify.exe md5 >>�ؼ��ļ�.txt
echo "Time_Providers:">>�ؼ��ļ�.txt
for /f "delims=" %%i in ('reg query HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\W32Time\TimeProviders\') do (reg query "%%i")>>�ؼ��ļ�.txt
certutil -hashfile %systemroot%\system32\w32time.dll md5 >>�ؼ��ļ�.txt
certutil -hashfile %SystemRoot%\System32\vmictimeprovider.dll md5 >>�ؼ��ļ�.txt
echo "netsh:">>�ؼ��ļ�.txt
reg query HKLM\SOFTWARE\Microsoft\Netsh >>�ؼ��ļ�.txt
echo "IFEO:">>�ؼ��ļ�.txt
for /f "delims=" %%i in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options"') do (reg query "%%i")>>�ؼ��ļ�.txt
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options"

:12.�ƻ�����schtasks
schtasks /query /v /fo csv>>�ƻ�����.csv

:13.�ƻ�����at
at >�ƻ�����at.txt

:14.�ƻ�����reg
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\SchedulingAgent" >�ƻ�����reg.txt
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree" >>�ƻ�����reg.txt

:15.�ƻ�����at
md "Tasks"
xcopy "%SystemRoot%\System32\Tasks" "Tasks" /E /Y /F

:16.ϵͳ��־
md "Logs"
xcopy "%windir%\System32\config" "Logs" /E /Y /F & xcopy "%windir%\System32\winevt\Logs" "Logs" /E /Y /F

:17.powershell��ʷ����
md "powershell����"
xcopy "%appdata%\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt" "powershell����" /E /Y /F