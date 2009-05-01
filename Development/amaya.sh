#!/bin/bash 
# -*- coding: utf-8 -*-
# Copyright (C) 2009 王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>
#
# @name_enUS 'Install Amaya 11.1 Web editor'
# @name_zhTW '安裝 Amaya 11.1 網頁設計工具' 
# @desc_enUS 'Amaya is a Web editor, i.e. a tool used to create and update documents directly on the Web.'
# @desc_zhTW '一個由 W3C 所開發的跨平台的網頁開發工具。'
# @warn_enUS 'Alert!! Amaya not support 64bit operation system.'
# @warn_zhTW '注意！！Amaya不支援 64bit 的作業系統。'
# @category 'Development'
# @maintaner '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @author '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @license 'GPL'
# @debian
# @ubuntu 
# @platform 'i386'

echo "安裝 Amaya"

mkdir -p ./temp/amaya

TOP_DIR=`pwd`


cd ./temp/amaya

# Download Amaya
case $DISTRO_ID in
		"Debian")
			case $PALT_NAME in
					"i386")
						$WGET 'http://www.w3.org/Amaya/Distribution/amaya_wx-11.1-1_i386.deb'
					;;
					"x86_64")
						echo "Sorry!! Lazyscript not support $PALT_NAME."
					;;
			esac
		;;
		"Ubuntu")
			case $PALT_ID in
					"i386")
						$WGET 'http://www.w3.org/Amaya/Distribution/amaya_wx-11.1-ubuntu1_i386.deb'
					;;
					"x86_64")
						echo "Sorry!! Lazyscript not support $PALT_NAME."
					;;
			esac
		;;
esac


# Install Amaya
dpkg -i *.deb


cd $TOP_DIR

#END
