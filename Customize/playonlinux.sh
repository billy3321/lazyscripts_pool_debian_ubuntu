#!/bin/bash 
# -*- coding: utf-8 -*-


# @name_enUS 'Install PlayOnLinux'
# @name_zhTW '安裝PlayOnLinux - 幫助您快速安裝 Windows 原生程式'
# @desc_enUS ''
# @desc_zhTW 'PlayOnLinux 是一款快速好用的 Wine 前端界面，可以幫助您無痛在Linux上面安裝各式Windows原生軟體。'
# @category 'Customize'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @license 'BSD'
# @ubuntu 
# @debian
# @platform 'i386 amd64'
# @child 'Common/add-apt-sources'

. add-apt-sources

add_playonlinux

apt-get -y --force-yes install playonlinux
    

