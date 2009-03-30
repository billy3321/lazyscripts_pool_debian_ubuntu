#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright (C) 2007 洪任諭 Hong Jen Yee (PCMan) <pcman.tw@gmail.com>
# Released under GNU General Public License

# install deb files and automatically install all required dependencies from apt
# usage: debinstall.py [FILES]

import os, sys, re

class Package:
    def __init__(self, filename):
        self.filename=filename
        stdo=os.popen('dpkg --info %s' % filename )
        output=stdo.read()
        stdo.close()
        match=re.search('Package:(.*)', output)
        if match:
            self.name=match.group(1).strip()
        else:
            self.name=''

        self.depends=[]

        match=re.search('Depends:(.*)', output)
        if match:
            dep_line=match.group(1).strip()
            deps=dep_line.split( ',' )
            for dep in deps:
                if dep:
                    self.depends.append( dep.split()[0] )

def find_package(pkgs, name):
    for pkg in pkgs:
        if pkg.name == name:
            return True
    return False

def get_all_depends(packages):
    deps=[]
    for pkg in packages:
        for dep in pkg.depends:
            if not dep in deps and not find_package(packages, dep):
                deps.append(dep)
    return deps


n=len(sys.argv)
if n < 2:
    exit(1)

filenames=sys.argv[1:]
packages=[]

for filename in filenames:
    packages.append( Package(filename) )

all_deps=get_all_depends(packages)
print '正在嘗試安裝相依套件...'
os.system( 'apt-get -y --force-yes install %s' % ' '.join( all_deps ) )
print '開始安裝套件...'
os.system( "dpkg -i %s" % ' '.join(filenames) )
