::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcFXTbVeeA6YX/Ofr0/yOpkgSUO0odoPU27CLMtwV7Ej0cJFj02Jf+A==
::fBE1pAF6MU+EWHreyHcjLQlHcFXTbVeeA6YX/Ofr0/yOpkgSUO0odoPU27CLMtwK5VCpcpM5mH9Cnas=
::fBE1pAF6MU+EWHreyHcjLQlHcFXTbVeeA6YX/Ofr0/yOpkgSUO0odoPU27CLMtwK5VDwYJQom35W1s4UCXs=
::fBE1pAF6MU+EWHreyHcjLQlHcFXTbVeeA6YX/Ofr0/yOpkgSUO0odoPU27CLMtweuVC8cZpj02Jf+A==
::fBE1pAF6MU+EWHreyHcjLQlHcFXTbVeeA6YX/Ofr0/yOpkgSUO0odoPU27CLMtyVMLVjtXdj1HtO+A==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFEoFHTimOXixEroM1P7y6++IpkIKWu4weYveyIiHI+9d40brFQ==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaFUrUXA==
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQK47/3djvUG5IAy22iZESCb
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQK19dbTp9wK1ro/8GCZAD5/MhYPZauUlhO7oGRTB2kL2Shz
::dhA7uBVwLU+EWNxUG8TF+Jy2lYFV+e9n+jDSLIg=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEVou12OTdq/UH664+20mZJiy9ajpoJLjN0wDm/VgeXmlypS7Xig==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFEoFHTimOXixEroM1P7y6++IpkIKWu4weYveyIgL6hKXN7ZgrX2lC6ffYQNdQksWJ1z9IAosrA4=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off&title ��Ƶ������
:log
cls
echo ��ǰ�汾��1.0.9.6
echo �������ݣ�����Ż�
echo ���棺���ڽ�����Ƶ��վƽ̨�����㷨��ǿ�����������޷��������أ�Bվֻ�����ش�ˮӡ��Ƶ������APP��Ҳ��ˮӡ��
echo �����������
set choose=nul
pause>>nul
cls
echo ���ڼ���ģ��  you-get
timeout 1 /nobreak>>nul
echo ���ڼ���ģ��  youtube-dl
timeout 1 /nobreak>>nul
echo ���ڼ���ģ��  ffmpeg
timeout 1 /nobreak>>nul
echo ���ڼ���ģ��  Pythonlib
timeout 2 /nobreak>>nul
cls
:start
title ��Ƶ������
cls
:begin
echo �����б���
echo 1.��������Ƶ����
echo 2.bilibili��Ƶ����
echo 3.CCTV��Ƶ���أ���֧��ֱ������
echo 4.â��TV��Ƶ����
echo 5.�ſ���Ƶ����
echo 6.��Ѷ��Ƶ����
echo 7.��������
echo 8.m3u8���أ�����m3u8�����ݣ�
echo 9.m3u8��ǿ��
echo 10.��Ƶ�ļ�����
echo code.Դ�뵼��
set /p choose=�����������ź�س�������exit�˳����򣩣�
if %choose%==1 (goto ib)
if %choose%==2 (goto ib)
if %choose%==3 (goto ib)
if %choose%==4 (goto ib)
if %choose%==5 (goto ib)
if %choose%==6 (goto ib)
if %choose%==7 (goto music)
if %choose%==8 (goto m3u8)
if %choose%==9 (goto m3u8pro)
if %choose%==10 (goto vd)
if %choose%==code (goto code)
if %choose%==exit (exit)
echo ��������ȷ�����
goto begin
:ib
set /P url=������Ҫ���ص���Ƶ��ַ:
cls
title ����Ŭ��������
you-get %url%
xcopy *.mp4 C:\Users\%username%\Desktop
del -f -q *.mp4
echo ������ɣ������������������
pause>>nul
set choose=nul
goto start
:m3u8
set /P url=������Ҫ���ص���Ƶ��ַ:
cls
title ����Ŭ��������
set "mh=:"
set "gang=-"
set timea=%time:~0,2%%mh%%time:~3,2%%mh%%time:~6,2%
set datea=%date:~0,4%%gang%%date:~5,2%%gang%%date:~8,2%
set "filename=%datea%%gang%%timea%"
youtube-dl "%url%" -o %filename%.mp4
xcopy *.mp4 C:\Users\%username%\Desktop
del -f -q *.mp4
echo ������ɣ������������������
pause>>nul
set choose=nul
goto start
:m3u8pro
set /P url=������Ҫ���ص���Ƶ��ַ:
title ����Ŭ��������
m3u8dl "%url%"
xcopy .\Downloads\*.mp4 C:\Users\%username%\Desktop
del -f -q -s .\Downloads\
rd -q -s .\Downloads\
echo ������ɣ������������������
pause>>nul
set choose=nul
goto start
:vd
set /P url=������Ҫ���ص���Ƶ��ַ��
title ����Ŭ��������
youtube-dl "%url%"
xcopy *.mp4 C:\Users\%username%\Desktop
del -f -q *.mp4
echo ������ɣ������������������
pause>>nul
set choose=nul
goto start
:music
set /P url=���������ֲ��ŵ�ַ��
title ����Ŭ��������
you-get %url%
xcopy *.mp3 C:\Users\%username%\Desktop
del -f -q *.mp3
echo ������ɣ������������������
pause>>nul
set choose=nul
goto start
:code
echo Դ�뵼��Э��
echo 1.Դ�����ѧϰʹ�ã��Ͻ����ڷǷ���;
echo 2.Դ��Ϊ�����������У�ת����ע��
echo 3.һЩ����Ϊgithub�ϵĿ�Դ��Ŀ����֧��ԭ����
echo �����������Դ��
pause>>nul
set choose=nul
md C:\Users\%username%\Desktop\ý��������Դ��
echo ������...
echo [----------]  0��
xcopy ..\ffmpeg.exe C:\Users\%username%\Desktop\ý��������Դ��
cls
echo ������...
echo [===-------]  30��
xcopy ..\you-get.exe C:\Users\%username%\Desktop\ý��������Դ��
cls
echo ������...
echo [====------]  40��
xcpoy ..\youtube-dl.exe C:\Users\%username%\Desktop\ý��������Դ��
cls
echo ������...
echo [======----]  60��
xcpoy ..\m3u8dl.exe C:\Users\%username%\Desktop\ý��������Դ��
cls
echo ������...
echo [========--]  80��
xcpoy ..\Դ��.bat
cls
echo ������ɣ���ȥ����鿴
echo ����������ز˵�
pause>>nul
set choose=nul
goto start 
