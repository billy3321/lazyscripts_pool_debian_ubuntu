#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2009 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 24 Aug 2009
# Released under GNU General Public License
# Please run as root.
#
# @name_zhTW '安裝 Picasa'
# @desc_zhTW '將Picasa安裝在Linux上面'
# @category 'Graphic'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @license 'GPL'
# @ubuntu 
# @debian
# @platform 'i386 amd64'
# @child 'Common/download-install Common/debinstall.py'

echo "正在下載並安裝Picasa..."
case "$PLAT_NAME" in
'i386')
./download-install "picasa" http://dl.google.com/linux/deb/pool/non-free/p/picasa/picasa_3.0-current_i386.deb
;;
'x86_64')
./download-install "picasa" http://dl.google.com/linux/deb/pool/non-free/p/picasa/picasa_3.0-current_amd64.deb 
;;
*)
echo "抱歉，目前Picasa並不支援 $PLAT_NAME 硬體架構，取消安裝。"
;;
esac
