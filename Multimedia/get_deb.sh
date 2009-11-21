#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2009 王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>
#
# @name_enUS 'Install GetDeb'
# @name_zhTW '安裝 GetDeb' 
# @desc_enUS 'GetDeb is an unofficial project with the mission to provide the latest open source and freeware applications for the current Ubuntu Linux release, in an easy to install manner.'
# @desc_zhTW 'GetDeb 是一個非官方的專案，它提供許多較新的自由軟體。'
# @warn_enUS ''
# @warn_zhTW ''
# @category 'Mulitmedia'
# @maintaner '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @author '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @license 'GPL'
# @ubuntu
# @debian
# @platform 'i386 amd64'
# @child 'Common/download-install Common/debinstall.py'

echo "安裝 GetDeb 來源"

./download-install 'GetDEB' 'http://archive.getdeb.net/install_deb/getdeb-repository_0.1-1~getdeb1_all.deb'
