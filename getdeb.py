#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright (C) 2007 洪任諭 Hong Jen Yee (PCMan) <pcman.tw@gmail.com>
# Released under GNU General Public License

#usage:
#getdeb.py [NAME] [RELEASE ID]
#[NAME] is the name of the package.  [RELEASE ID] is a id it used on getdeb.net

import sys, os, re, urllib

if len(sys.argv) < 3:
    exit(1)

name=sys.argv[1]
url="http://www.getdeb.net/release.php?id=%s" % sys.argv[2]

print "正在嘗試尋找並下載 %s 的套件" % name

f=urllib.urlopen(url)
if f:
    page_content=f.read()
    f.close()
    matches=re.findall('<a[^>]*href="(download.php[^>]*)">([^<]*)', page_content, re.I | re.M)
    if not matches:
        print '錯誤：下載套件失敗!'
        exit(1)

    tmpdir="./temp/%s" % name
    if not os.path.exists(tmpdir):
        os.mkdir( tmpdir )

    for match in matches:
        pkg_url="http://www.getdeb.net/%s" % match[0]
        pkg_name="%s.deb" % match[1].strip()
        os.system("wget -c --directory-prefix=%s '%s'" % (tmpdir, pkg_url) )

    print "正在安裝套件 %s..." % name
    os.system( "scripts/debinstall.py %s/*.deb" % tmpdir )
