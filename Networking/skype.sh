#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 7 Dec 2008
# Released under GNU General Public License
# Download and install skype for i686 and x86_64 ubuntu
# Please run as root.
# http://ubuntuforums.org/showthread.php?t=432295
# @name_enUS '' 
# @name_zhTW '安裝 Skype 網路電話 2.0'
# @desc_enUS ''
# @desc_zhTW 'Skype 網路電話官方發行的 Linux 版本，這是 2.0 正式版，具有許多令人興奮的新功能。
#             注意：AMD64版本在安裝後仍需手動設定聲音輸出才可正常使用。'
# @category 'Networking'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @license 'GPL'
# @debian ''
# @ubuntu ''
# @platform 'i386 AMD64'

echo "下載並安裝skype網路電話..."

case "$ARCH_NAME" in
i686)
scripts/download-install skype 'http://www.skype.com/go/getskype-linux-ubuntu'
;;
x86_64)

scripts/multimedia-repos

# 將以下網址之內容執行於下
# http://ubuntuforums.org/showthread.php?t=432295
 case "$DISTRIB_CODENAME" in
 intrepid)
 apt-get -y --force-yes install ia32-libs lib32asound2 libasound2-plugins
 scripts/download-install getlibs 'http://boundlesssupremacy.com/Cappy/getlibs/getlibs-all.deb'
 scripts/download-install skype 'http://www.skype.com/go/getskype-linux-ubuntu-amd64'
 getlibs --yes -p libqtcore4 libqtgui4 bluez-alsa
 ;;
 hardy)
 apt-get -y --force-yes install ia32-libs lib32asound2 libasound2-plugins
 scripts/download-install skype 'http://www.skype.com/go/getskype-linux-ubuntu-amd64'
 ;;
 gutsy|feisty|edgy)
 apt-get -y --force-yes install ia32-libs lib32asound2
 scripts/download-install getlibs 'http://boundlesssupremacy.com/Cappy/getlibs/getlibs-all.deb'
 scripts/download-install skype 'http://www.skype.com/go/getskype-linux-ubuntu-amd64'
 getlibs --yes /usr/bin/skype
#安裝來自medibuntu之skype

# apt-get install non-free-codecs skype

 ;;
 *)
 echo "抱歉，$ARCH_NAME硬體架構版本之skype不支援ubuntu $DISTRIB_NAME。"
 ;;
 esac
;;
*)
echo "抱歉，Lazybuntu目前尚未支援 $ARCH_NAME 硬體架構。"
# 若仍有其他硬體架構請加於此
;;
esac
