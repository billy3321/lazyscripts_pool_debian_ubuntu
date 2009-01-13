#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 25 Nov 2008
# Released under GNU General Public License
# Download and install madedit for i686 and x86_64 ubuntu
# Please run as root.

echo "正在下載並安裝MadEdit..."
case "$ARCH_NAME" in
i686)
scripts/download-install madedit http://nchc.dl.sourceforge.net/sourceforge/madedit/madedit_0.2.8-1_i386.deb
;;
x86_64)
scripts/download-install madedit http://nchc.dl.sourceforge.net/sourceforge/madedit/madedit_0.2.8-1_amd64.deb
;;
*)
echo "抱歉，目前Lazybuntu並不支援 $ARCH_NAME 硬體架構，取消安裝。"
;;
esac

#END
