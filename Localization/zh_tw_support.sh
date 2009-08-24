#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2007 洪任諭(PCMan) <pcman.tw -AT- gmail.com>
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 24 Aug 2009
# Released under GNU General Public License
# Please run as root.
#
# @name_zhTW '安裝中文支援'
# @desc_zhTW '安裝中文支援，可以讓系統有完整的中文介面。'
# @category 'Customize'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '2007 洪任諭(PCMan) <pcman.tw -AT- gmail.com>'
# @license 'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'

case $WIN_MGR in
'Gnome')
    apt-get -y --force-yes install language-support-zh language-pack-zh language-pack-gnome-zh
    ;;
'KDE')
    apt-get -y --force-yes install language-support-zh language-pack-zh language-pack-kde-zh
    ;;
*)
    apt-get -y --force-yes install language-support-zh language-pack-zh language-pack-gnome-zh language-pack-kde-zh
    ;;
esac

