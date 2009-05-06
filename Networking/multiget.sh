#!/bin/bash 
# -*- coding: utf-8 -*-
# Copyright (C) 2009 王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>
#
# @name_enUS 'Install MultiGet'
# @name_zhTW '安裝 MultiGet'
# @desc_enUS 'MultiGet is an easy-to-use GUI file downloader for Windows/Linux/BSDs/MacOs.'
# @desc_zhTW 'MultiGet 是一個簡單易用的圖形化介面的檔案下載工具。'
# @warn_enUS ''
# @warn_zhTW ''
# @category 'Networking'
# @maintaner '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @author '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @license 'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'
# @child 'Common/debinstall.py Common/download-install'


case $PLAT_NAME in
	"i386")
   	./download-install MultiGet "http://ncu.dl.sourceforge.net/sourceforge/multiget/multiget_1.1.2-0getdeb1_i386.deb"
   	;;
 	"x86_64")
 	echo "Sorry, Lazyscripts not support $PLAT_NAME"
	;;
	*)
	echo "Sorry, Lazyscripts not support $PLAT_NAME"
	;;
esac


#END
