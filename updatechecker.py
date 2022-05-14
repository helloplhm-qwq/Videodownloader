import os
import sys
import requests
import json
def updatecheck():
	updateurl = "https://raw.github.com/penglihuamiao/Videodownloader/main/updater.json"
	#print('"wget "'+str(updateurl)+r'"%userprofile%\Appdata\Roaming\xiaoshudian\videodownloader\"')
	#update = requests.get("https://raw.cithub.icu/penglihuamiao/Videodownloader/updater.json")
	#print(update)
	#info = json.load(update)
	downloaderr = os.system('"wget "'+str(updateurl))
	if downloaderr!=0:
		updateurl="https://raw.cithub.icu/penglihuamiao/Videodownloader/main/updater.json"
		downloaderr = os.system('"wget "'+str(updateurl))
	with open("updater.json") as f:
		info = json.load(f)
		f.close()
	#print(info)
	if info['newestversion'] == 2000:
		print("Successfully to check update.Now you are using the lastest version.")
	elif info['newestversion'] > 2000:
		verlist = list(str(info['newestversion']))
		verlist_ = []
		for i in verlist:
			verlist_.append(i)
			verlist_.append(".")
		verlist_.pop(7)
		version = ""
		for i in verlist_:
			version = version+str(i)
		print("There is a new version,"+str(version)+" Do you want to download?(Y/N)")
		ui = input()
		if ui=="y" or ui=="Y":
			import updatedownloader
#end
