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
@echo off&title 视频下载器
:log
cls
echo 当前版本：1.0.9.6
echo 更新内容：体积优化
echo 公告：由于近期视频网站平台加密算法加强，爱奇艺已无法正常下载，B站只能下载带水印视频（包括APP内也有水印）
echo 按任意键载入
set choose=nul
pause>>nul
cls
echo 正在加载模块  you-get
timeout 1 /nobreak>>nul
echo 正在加载模块  youtube-dl
timeout 1 /nobreak>>nul
echo 正在加载模块  ffmpeg
timeout 1 /nobreak>>nul
echo 正在加载模块  Pythonlib
timeout 2 /nobreak>>nul
cls
:start
title 视频下载器
cls
:begin
echo 操作列表：
echo 1.爱奇艺视频下载
echo 2.bilibili视频下载
echo 3.CCTV视频下载（不支持直播！）
echo 4.芒果TV视频下载
echo 5.优酷视频下载
echo 6.腾讯视频下载
echo 7.音乐下载
echo 8.m3u8下载（部分m3u8不兼容）
echo 9.m3u8加强版
echo 10.视频文件下载
echo code.源码导出
set /p choose=请输入操作序号后回车（输入exit退出程序）：
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
echo 请输入正确的序号
goto begin
:ib
set /P url=请输入要下载的视频地址:
cls
title 正在努力下载中
you-get %url%
xcopy *.mp4 C:\Users\%username%\Desktop
del -f -q *.mp4
echo 下载完成，按任意键返回主界面
pause>>nul
set choose=nul
goto start
:m3u8
set /P url=请输入要下载的视频地址:
cls
title 正在努力下载中
set "mh=:"
set "gang=-"
set timea=%time:~0,2%%mh%%time:~3,2%%mh%%time:~6,2%
set datea=%date:~0,4%%gang%%date:~5,2%%gang%%date:~8,2%
set "filename=%datea%%gang%%timea%"
youtube-dl "%url%" -o %filename%.mp4
xcopy *.mp4 C:\Users\%username%\Desktop
del -f -q *.mp4
echo 下载完成，按任意键返回主界面
pause>>nul
set choose=nul
goto start
:m3u8pro
set /P url=请输入要下载的视频地址:
title 正在努力下载中
m3u8dl "%url%"
xcopy .\Downloads\*.mp4 C:\Users\%username%\Desktop
del -f -q -s .\Downloads\
rd -q -s .\Downloads\
echo 下载完成，按任意键返回主界面
pause>>nul
set choose=nul
goto start
:vd
set /P url=请输入要下载的视频地址：
title 正在努力下载中
youtube-dl "%url%"
xcopy *.mp4 C:\Users\%username%\Desktop
del -f -q *.mp4
echo 下载完成，按任意键返回主界面
pause>>nul
set choose=nul
goto start
:music
set /P url=请输入音乐播放地址：
title 正在努力下载中
you-get %url%
xcopy *.mp3 C:\Users\%username%\Desktop
del -f -q *.mp3
echo 下载完成，按任意键返回主界面
pause>>nul
set choose=nul
goto start
:code
echo 源码导出协议
echo 1.源码仅供学习使用，严禁用于非法用途
echo 2.源码为本工作室所有，转载请注明
echo 3.一些东西为github上的开源项目，请支持原作者
echo 按任意键导出源码
pause>>nul
set choose=nul
md C:\Users\%username%\Desktop\媒体下载器源码
echo 导出中...
echo [----------]  0％
xcopy ..\ffmpeg.exe C:\Users\%username%\Desktop\媒体下载器源码
cls
echo 导出中...
echo [===-------]  30％
xcopy ..\you-get.exe C:\Users\%username%\Desktop\媒体下载器源码
cls
echo 导出中...
echo [====------]  40％
xcpoy ..\youtube-dl.exe C:\Users\%username%\Desktop\媒体下载器源码
cls
echo 导出中...
echo [======----]  60％
xcpoy ..\m3u8dl.exe C:\Users\%username%\Desktop\媒体下载器源码
cls
echo 导出中...
echo [========--]  80％
xcpoy ..\源码.bat
cls
echo 导出完成，请去桌面查看
echo 按任意键返回菜单
pause>>nul
set choose=nul
goto start 