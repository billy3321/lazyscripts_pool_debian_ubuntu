#!/bin/bash 
# -*- coding: utf-8 -*-
# Copyright (C) 2009 王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>
#
# @name_enUS 'Install PSPP'
# @name_zhTW '安裝 PSPP'
# @desc_enUS 'PSPP is a free software application for analysis of sampled data. It has a graphical user interface and conventional command line interface.'
# @desc_zhTW 'PSPP 是一個類似 Windows 上的 SPSS 的分析軟體。'
# @warn_enUS ''
# @warn_zhTW ''
# @category 'Development'
# @maintaner '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @author '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @license 'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'

echo "Install PSPP"

apt-get install -y --force-yes pspp

#END
