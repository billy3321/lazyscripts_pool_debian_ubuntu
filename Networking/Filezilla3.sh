#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2007 洪任諭(PCMan) <pcman.tw -AT- gmail.com>
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 2 Dec 2008
# Released under GNU General Public License
# Please run as root.
#
# @name_zhTW '安裝 Filezilla 3 - 強大好用的 FTP 連線軟體'
# @desc_zhTW 'Filezilla 3 是 Windows 下知名 FTP 連線軟體 Filezilla 重新開發的跨平台版本。
#             功能強大，介面親和，多國語言支援完善，雖然還在測試發展中，已經足以應付一般需求。
#             而因為 Filezilla 3 是重新開發的，所以功能比原 Windows 版少，介面也略有不同。'
# @category 'Networking'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '2007 洪任諭(PCMan) <pcman.tw -AT- gmail.com>'
# @license 'GPL'
# @ubuntu 
# @debian
# @platform 'i386 amd64'

apt-get -y --force-yes install filezilla filezilla-locale

