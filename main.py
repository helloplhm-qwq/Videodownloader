import os
import requests
import sys
import json
import updatechecker
os.system("md C:\\Users\\%username%\\AppData\\Roaming\\xiaoshudian")
os.system("md C:\\Users\\%username%\\AppData\\Roaming\\xiaoshudian\\videodownloader")
os.system("md C:\\Users\\%username%\\AppData\\Roaming\\xiaoshudian\\videodownloader\\libraries")
workpath = "C:\\Users\\%username%\\AppData\\Roaming\\xiaoshudian\\videodownloader\\"
os.system(r"del /f /q .\*.json")
updateurl = "https://raw.github.com/penglihuamiao/Videodownloader/main/updater.json"
#print('"wget "'+str(updateurl)+r'"%userprofile%\Appdata\Roaming\xiaoshudian\videodownloader\"')
#update = requests.get("https://raw.cithub.icu/penglihuamiao/Videodownloader/updater.json")
#print(update)
#info = json.load(update)
downloaderr = os.system('"wget "'+str(updateurl))
libres_c = -1
libres_f = -1
libres = -1
if downloaderr!=0:
	print("Failed")
	updateurl="https://raw.cithub.icu/penglihuamiao/Videodownloader/main/updater.json"
	downloaderr = os.system('"wget "'+str(updateurl))
with open("updater.json") as f:
	updater = json.load(f)
	f.close()
liburl = updater['libraries']
print("wget "+liburl)
libres = os.system("wget "+liburl)
if libres!=0:
	print("Failed to download library list from Github.Using mirror(cithub),please wait.")
	liburl = updater["mirrors"][0]
	print("wget "+liburl)
	libres_c = os.system("wget "+liburl)
if libres_c!=0 and libres!=0:
	print("Failed to download library list from cithub.Using the second mirror,please wait.")
	liburl = updater["mirrors"][1]
	print("wget "+liburl)
	libres_f = os.system("wget "+liburl)
if libres!=0 and libres_c!=0 and libres_f!=0:
	print("Failed to download list.Please check your network.")
	sys.exit("Program finished with errorcode 1")
if libres == 0:
	with open("libraries.json") as f:
		liblist = json.load(f)
		f.close()
elif libres_c == 0:
	with open("cithub-mirror-lib.json") as f:
		liblist = json.load(f)
		f.close()
elif libres_f == 0:
	with open("fastgit-mirror-lib.json") as f:
		liblist = json.load(f)
		f.close()
print("开始下载运行库，请耐心等待")
for i in liblist:
	os.system("wget "+str(i)+" -o "+workpath+"libraries")
print("运行库下载完成")
