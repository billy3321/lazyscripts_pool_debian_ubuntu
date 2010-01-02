#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2007 洪任諭 Hong Jen Yee (PCMan) <pcman.tw@gmail.com>
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 30 Mar 2009
# Released under GNU General Public License
# Download and install swiftfox.
# Please run as root.
#
# @name_enUS '' 
# @name_zhTW '安裝 SwiftFox - 非官方最佳化版的 Firefox'
# @desc_enUS ''
# @desc_zhTW '針對各種不同 CPU 最佳化編譯的 Firefox，效能勝過 Firefox 官方版本'
# @category 'Networking'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '洪任諭 Hong Jen Yee (PCMan) <pcman.tw@gmail.com>'
# @license 'GPL'
# @ubuntu ''
# @platform 'i386 AMD64'
# @child 'Common/add-apt-sources Common/cpu-type.py'

if [ "$DISTRO_ID" == "Ubuntu" ]; then
    . add-apt-sources

    add_swiftfox

    CPU=`./cpu-type.py`

    echo "自動偵測這台電腦上的 CPU 架構：$CPU"
    if [ -n "$CPU" ]; then
        if [ "$CPU" == "pentium-m" ]; then
            apt-get -y --force-yes install swiftfox-i686
        fi
        apt-get -y --force-yes install "swiftfox-$CPU"
    else
        echo '錯誤：Lazyscripts 無法辨識本機 CPU 種類，安裝 SwiftFox 失敗'
    fi
else
    echo "Sorry! Swiftfox is not support \"Debian Lenny\" now"
fi
