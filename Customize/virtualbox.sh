#!/bin/bash 
# -*- coding: utf-8 -*-
# Copyright (C) 2009 王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>
#
# @name_enUS 'Install SUN xVM VirtaulBox'
# @name_zhTW '安裝 SUN xVM VirtualBox 虛擬機器'
# @desc_enUS ''
# @desc_zhTW 'SUN xVM VirtualBox 是一個由 SUN 開發的虛擬機器工具，可以在系統上虛擬出數台虛擬機器進行工作。'
# @warn_enUS ''
# @warn_zhTW ''
# @category 'Customize'
# @maintaner '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @author '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @license 'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'
# @child 'Common/add-apt-sources'

. add-apt-sources
add_virtualbox

# Remove VirtualBox-ose if it's installed
apt-get -y --force-yes remove virtualbox-ose

# Install VirtualBox 3.0
apt-get -y --force-yes install virtualbox-3.0

#END
