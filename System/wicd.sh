#!/bin/bash 
# -*- coding: utf-8 -*-
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
#
# @name_enUS 'Install Wicd'
# @name_zhTW '安裝 Wicd 無線網路設定工具'
# @desc_enUS ''
# @desc_zhTW 'Wicd 是一個輕量化的無線網路連接工具，是內建無線網路設定工具以外的另一個選擇。'
# @warn_enUS ''
# @warn_zhTW '注意：安裝 Wicd 無線網路設定工具將會移除系統當前的無線網路設定工具。'
# @category 'System'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @license 'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'
# @child 'Common/add-apt-sources'

. add-apt-sources
add_wicd

apt-get -y --force-yes install wicd

#END
