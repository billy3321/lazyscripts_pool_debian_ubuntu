#!/usr/bin/env python
# -*- encoding=utf8 -*-
#
# @name_zhTW '安裝yEd流程圖軟體'
# @desc_zhTW 'Java 寫的流程圖軟體'
# @author '2009 Hsin Yi Chen 陳信屹 (hychen) <ossug.hychen at gmail.com>
# @ubuntu
# @license 'BSD'
import urllib
import re
import os
import sys
import datetime

def exit_script(msg):
	msg = msg+"%s" % datetime.datetime.now()
	print msg
	open('/tmp/'+os.path.basename(__file__)+'.log','w').write(msg+'\n')
	sys.exit()

host = 'http://www.yworks.com'
dwurl = host+'/en/products_download.php'
prams = {'file':'yEd3_2_0_1.sh',
		'task':'accept',
		'agree':'true'}

if os.getuid() != 0:
	exit_script('please run as root.')

print 'starting to dowload installer..'
res = urllib.urlopen(dwurl, urllib.urlencode(prams))
respone = res.read()

if not respone:
	exit_script('can not feth content of the page \
				where download url exists.')

regex ='<a href="(.*)">start yEd download</a>'
real_dwurl = re.findall(regex,respone, re.M)[0]

if not real_dwurl:
	exit_script('can not get download url.')

try:
	filename = real_dwurl.split('/')[-1]
except IndexError:
	exit_script('can not get file name.')

path = '/tmp/'+filename

if not os.path.isfile(path):
    os.system("/usr/bin/env wget -c %s -O %s" % (host+real_dwurl,path))

print 'run installer'
os.system('bash '+path)

