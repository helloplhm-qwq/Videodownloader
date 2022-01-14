@echo off
set usbeam="https://link.jscdn.cn/189/aHR0cHM6Ly9jbG91ZC4xODkuY24vd2ViL3NoYXJlP2NvZGU9MnVVSkJiTlZGYlUz.zip"
set acrobat2020="https://stuxidianeducn-my.sharepoint.com/personal/htmao_stu_xidian_edu_cn/_layouts/15/download.aspx?share=ESGaHpSEfA1FuH1IqxWoFw0BAX5hOgGwXWSdUG9t_c6XkA"
set photoshop2020="https://stuxidianeducn-my.sharepoint.com/personal/htmao_stu_xidian_edu_cn/_layouts/15/download.aspx?share=EY-2NpjJ4aNOmCYAHWrsdu0BFQNdTibOPDqYaHxROWR24w"
set premiere2020="https://stuxidianeducn-my.sharepoint.com/personal/htmao_stu_xidian_edu_cn/_layouts/15/download.aspx?share=EWNm1aFOf5tDnJsDaf7buGUB8xSDYeNGe8JJrdK63d05XQ"
set illustrator2020="https://stucciteducn-my.sharepoint.com/personal/1501441139_stu_ccit_edu_cn/_layouts/15/download.aspx?share=EdawSA2uHBFJmjFmP-JDSZYBMsEgl5088fRnjc_zPBJQ5w"
set aftereffects2020="https://stuxidianeducn-my.sharepoint.com/personal/htmao_stu_xidian_edu_cn/_layouts/15/download.aspx?share=EXesqvvfMxJCo1nYFXTDAwMBAUBATFD9Q_l5eL9kyOImqg"
set mediaencoder2020="https://stuxidianeducn-my.sharepoint.com/personal/htmao_stu_xidian_edu_cn/_layouts/15/download.aspx?share=EWCzph5xymZCsho2WWkV1IcB3Qo8_WcrVVhIuKoR9_QO8Q"
set prelude2020="https://stuxidianeducn-my.sharepoint.com/personal/htmao_stu_xidian_edu_cn/_layouts/52/download.aspx?share=EQ4gaJm-9lNOscZVVtzR_6UBgz463ColrRmIvEA-rgaluA"
set indesign2020="https://stucciteducn-my.sharepoint.com/personal/1501441139_stu_ccit_edu_cn/_layouts/52/download.aspx?share=ETH0WllXm5dNkGGcFXxpUqUBy1qTM-hj4i1_plyQQ3fYbg"
set incopy2020="https://stucciteducn-my.sharepoint.com/personal/1501441139_stu_ccit_edu_cn/_layouts/52/download.aspx?share=EX7s_1TM-VxPtQ2Oz8pRyyoBIFHTBx8h07Td4Degno2s2A"
set dreamweaver2020="https://stucciteducn-my.sharepoint.com/personal/1501441139_stu_ccit_edu_cn/_layouts/52/download.aspx?share=EefG-E5rXWJKoNQsV3vC9asBPkDm5ghBaF5ExAJy5jaQ6g"
set characteranimator2020="https://stucciteducn-my.sharepoint.com/personal/1501441139_stu_ccit_edu_cn/_layouts/52/download.aspx?share=EeFqnicyN1NIiTifjhoVQ9MBQ7U98ED8aqj5BX8xLFcaaQ"
set xd2020="https://stuxidianeducn-my.sharepoint.com/personal/htmao_stu_xidian_edu_cn/_layouts/52/download.aspx?share=EeoN2tFlbVdKmHlNnROxiu0B6KgodWcy0Pb9c6RqTfFiXw"
set birdge2020="https://stuxidianeducn-my.sharepoint.com/personal/htmao_stu_xidian_edu_cn/_layouts/52/download.aspx?share=Ef9JBztOsqNGqwfs51RWCp0BJxjmABfsOTgXkn2hoYlB1w"
set audition2020="https://stuxidianeducn-my.sharepoint.com/personal/htmao_stu_xidian_edu_cn/_layouts/52/download.aspx?share=ESMuahg6F25IjyGGdyHM4JgBW35a8w_EMsGAehM0DfNw1Q"
set lightroom2020="https://stuxidianeducn-my.sharepoint.com/personal/htmao_stu_xidian_edu_cn/_layouts/52/download.aspx?share=EQZYDfzsbsBCrUT7-XoDGysBSfVDYwnQAA-WUQErG3Aq3A"
set animate2020="https://stuxidianeducn-my.sharepoint.com/personal/htmao_stu_xidian_edu_cn/_layouts/52/download.aspx?share=EYLs9-kLTVtFllxiiF6v6tMBlD2mDYq8N8Xpe6srM0VMBg"
set steampp="https://pan.bilnn.cn/api/v3/file/sourcejump/E5pxXWH9/Gr7kjKRL0ukgGZ2PCkKqxOYE202-ac75TdpIk4R0x2I*"
:main
title AppDownload
echo 欢迎来到软件下载工具
echo "当前版本：1.1.24-dev21"
echo 列表：
echo 1.UsbEam Hosts Editor
echo 2.PhotoShop 2020
echo 3.Steam++
set /p choice=请输入操作序号：
if %choice%==1 (goto usbeam)
if %choice%==2 (goto photoshop2020)
if %choice%==3 (goto steampp)
goto main
:usbeam
title Downloading
start aria2c %usbeam% C:\Users\%username%\Desktop\
echo 下载完成，按任意键返回
goto main
:photoshop2020
title Downloading
start aria2c %photoshop2020% C:\Users\%username%\Desktop\
echo 下载完成，按任意键返回
goto main
:steampp
title Downloading
start aria2c %steampp% C:\Users\%username%\Desktop\
echo 下载完成，按任意键返回
goto main
