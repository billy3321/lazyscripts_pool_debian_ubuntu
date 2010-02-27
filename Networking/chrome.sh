#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2009 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 24 Aug 2009
# Released under GNU General Public License
# Please run as root.
#
# @name_zhTW '安裝 Google Chrome 瀏覽器(Beta)'
# @desc_zhTW '將Google Chrome 瀏覽器安裝在Linux上面'
# @warn_zhTW 'Google Chrome 瀏覽器目前仍不穩定，請小心使用。'
# @category 'Networking'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @license 'GPL'
# @ubuntu 
# @debian
# @platform 'i386 amd64'

echo "正在安裝Google Chrome(Beta)"

case $PLAT_NAME in
	"i386")
   	./download-install Google_Chrome "http://dl.google.com/dl/linux/direct/google-chrome-beta_current_i386.deb"
   	;;
 	"x86_64")
   	./download-install Google_Chrome "http://dl.google.com/dl/linux/direct/google-chrome-beta_current_amd64.deb"
	;;
	*)
	echo "Sorry, Lazyscripts not support $PLAT_NAME"
	;;
esac
