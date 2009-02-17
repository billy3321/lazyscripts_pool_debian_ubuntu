#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2007 洪任諭(PCMan) <pcman.tw -AT- gmail.com>
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 2 Dec 2008
# Released under GNU General Public License
# Please run as root.
#
# @name_zhTW '安裝 Sun Java 環境 (含 Firefox 瀏覽器外掛)'
# @desc_zhTW 'Sun Java 6 虛擬機器執行環境，執行 Java 軟體或是網頁上的 Java 小程式需要。'
# @warn_zhTW '安裝此項目，會在安裝過程中跳出 Sun 的授權合約，需要同意才能正確安裝。'
# @category 'Customize'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '2007 洪任諭(PCMan) <pcman.tw -AT- gmail.com>'
# @license 'GPL'
# @ubuntu 
# @debian
# @platform 'i386 amd64'

DEBIAN_FRONTEND='gnome' apt-get -y --force-yes install sun-java6-jre sun-java6-plugin

