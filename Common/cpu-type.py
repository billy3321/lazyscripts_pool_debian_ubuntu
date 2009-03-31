#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright (C) 2007 洪任諭 Hong Jen Yee (PCMan) <pcman.tw@gmail.com>
# Released under GNU General Public License

# This script is used to detect cpu type for swiftfox
# print 'pentium3', 'pentium-m', 'pentium4', 'prescott', 
# 'athlon-xp', 'athlon64' to stdout
# if the cpu is not supported, the program prints nothing

#References:
# http://www.sandpile.org/ia32/cpuid.htm
# http://download.intel.com/design/processor/applnots/24161831.pdf

# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <bill3321 -AT- gmail.com>'
# @author '洪任諭 Hong Jen Yee (PCMan) <pcman.tw@gmail.com>'
# @license 'GPL'
# @parent 'Networking/swiftfox'
# @hide

import sys, os, re

f=open('/proc/cpuinfo', 'r')
info=f.read()
f.close()

match=re.search('vendor_id[^\w]*(\w+)', info)
if not match:
    exit(1)
vender=match.group(1)

match=re.search('cpu family[^\d]*(\d+)', info)
if not match:
    exit(1)
family=int(match.group(1))

match=re.search('model[^\d]*(\d+)', info)
if not match:
    exit(1)
model=int(match.group(1))

if vender=='GenuineIntel': # Intel
    if family==6: # Intel P6, P2, P3, PM, Core 2
        if model==9 or model==13: #PM
            print 'pentium-m'
        elif model>=7 and model<=11: # P3
            print 'pentium3'
        elif model>=14: # CD, C2D
            print 'prescott'
    elif family==15: # P4 series
        print 'pentium4'
elif vender=='AuthenticAMD': # AMD
    if family==6:  # AMD K7: Athlon, Duron
        print 'athlon-xp'
    elif family==15 or family==0: # extended family, treated as K8??
        # FIXME: I'm not sure if this is correct
        # FIXME: 64 bit environment is not currently supported
        print 'athlon-64-32bit'
