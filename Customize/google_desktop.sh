#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2009 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 24 Aug 2009
# Released under GNU General Public License
# Please run as root.
#
# @name_zhTW '安裝 Google Desktop'
# @desc_zhTW '將Google Desktop安裝在Linux上面'
# @category 'Customize'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @license 'GPL'
# @ubuntu 
# @debian
# @platform 'i386 amd64'
# @child 'Common/add-apt-sources'

source add-apt-sources
add_google_repo

echo "正在下載並安裝Google Desktop..."
case "$PLAT_NAME" in
'i386')
# ./download-install "google_desktop" http://dl.google.com/linux/deb/pool/non-free/g/google-desktop-linux/google-desktop-linux_current_i386.deb
;;
'x86_64')
# ./download-install "google_desktop" http://dl.google.com/linux/deb/pool/non-free/g/google-desktop-linux/google-desktop-linux_current_amd64.deb
;;
*)
echo "抱歉，目前Google Desktop並不支援 $PLAT_NAME 硬體架構，取消安裝。"
;;
esac
