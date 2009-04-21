#!/bin/bash 
# -*- coding: utf-8 -*-
# Copyright (C) 2009 王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>
#
# @name_enUS 'Install Code::Blocks IDE'
# @name_zhTW '安裝 Code::Blocks '
# @desc_enUS 'The open source, cross-platform IDE'
# @desc_zhTW '一個跨平台且開放原始碼的軟體開發工具，支援多種專案格式。'
# @warn_enUS ''
# @warn_zhTW ''
# @category 'Development'
# @maintaner '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @author '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @license 'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'

echo "Install Code::Block"

mkdir -p ./temp/codeblocks/

TOP_DIR=$PWD

cd ./temp/codeblocks/

#Get deb 

case $DISTRIB_ID in
    "Debian")
		case $PLAT_NAME in 
			"i686")
    			wget http://nchc.dl.sourceforge.net/sourceforge/codeblocks/codeblocks-8.02debian-i386.tar.gz
			;;
			"x86_64")
				wget http://nchc.dl.sourceforge.net/sourceforge/codeblocks/codeblocks-8.02debian-amd64.tar.gz 	
			;;
		esac
		;;
    "Ubuntu")
		case $PLAT_NAME in
			"i686")
				wget http://nchc.dl.sourceforge.net/sourceforge/codeblocks/codeblocks_8.02-0ubuntu1.deb.tar.gz
			;;
			"x86_64")
				wget http://nchc.dl.sourceforge.net/sourceforge/codeblocks/codeblocks-8.02-amd64.tar.gz
			;;
		esac
	;;
	*)
	echo "Sorry, Lazyscripts not support $DISTRIB_ID"
	;;
esac

tar zxvf *.tar.gz

dpkg -i *.deb

cd $TOP_DIR



#END
