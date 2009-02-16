#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2007 洪任諭(PCMan) <pcman.tw -AT- gmail.com>
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 2 Dec 2008
# Released under GNU General Public License
# Please run as root.
#
# @name_zhTW '移除無用的 Gnome 小遊戲'
# @desc_zhTW 'Gnome 本身附帶了很多難玩的小遊戲，就像是 Windows 的遊樂場一樣。
#             勾選這個選項，可以幫你清掉這些用不到的程式，避免佔用空間。'
# @category 'Customize'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '2007 洪任諭(PCMan) <pcman.tw -AT- gmail.com>'
# @license 'GPL'
# @ubuntu 
# @debian
# @platform 'i386 amd64'

apt-get -y --force-yes --purge remove gnome-games

