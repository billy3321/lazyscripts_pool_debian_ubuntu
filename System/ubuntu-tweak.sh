#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 30 Mar 2009
# Released under GNU General Public License
# Add ubuntu tweak source into source.list and install ubuntu tweak from apt
# Please run as root.
#
# @name_enUS 'Install Ubuntu-Tweak'
# @name_zhTW '安裝 Ubuntu Tweak 校調工具'
# @desc_enUS 'Ubuntu Tweak is a config tool for ubuntu and good for use.'
# @desc_zhTW 'Ubuntu Tweak 是一款快速好用的挍調工具，若您在往後的使用中需要特定軟體或是調整您的作業系統，
#             Ubuntu Tweak 可以提供您一個快速方便的設定界面。'
# @category 'System'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @license 'GPL'
# @ubuntu 
# @platform 'i386 amd64'
# @child 'Common/add-apt-sources'


#Check if source.list has source of ubuntu tweak
. add-apt-sources

add_ubuntu_tweak

apt-get -y --force-yes install ubuntu-tweak
