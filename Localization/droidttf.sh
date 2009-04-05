#!/bin/bash 
# -*- coding: utf-8 -*-
#
# @name_enUS 'install Droid ttf fonts' 
# @name_zhTW '安裝 Droid 字形'
# @desc_enUS 'Droid font is used on Google Android Platform, it's small and clear'
# @desc_zhTW 'Droid 字形是 Google 開發用來在Android手機上使用的字形，佔用空間小，而外型也很清晰。'
# @category 'Localization'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <bill3321 -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <bill3321 -AT- gmail.com>'
# @license 'GPL'
# @debian ''
# @ubuntu ''
# @platform 'i386 AMD64'
# @child 'Common/add-apt-sources'


. add-apt-sources

add_ubuntu_fonts

sudo apt-get install ttf-droid

