#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2009 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 24 Aug 2009
# Released under GNU General Public License
# Please run as root.
#
# @name_zhTW '安裝 Picasa'
# @desc_zhTW '將Picasa安裝在Linux上面'
# @category 'Graphic'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @license 'GPL'
# @ubuntu 
# @debian
# @platform 'i386 amd64'
# @child 'Common/add-apt-sources'

source add-apt-sources
add_google

echo "正在下載並安裝Picasa..."

apt-get -y --force-yes install picasa
