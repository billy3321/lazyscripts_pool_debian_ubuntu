#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 2 Dec 2008
# Released under GNU General Public License
# Add ubuntu tweak source into source.list and install ubuntu tweak from apt
# Please run as root.



#Check if source.list has source of ubuntu tweak
. scripts/add-apt-sources

add_ubuntu_tweak

apt-get -y --force-yes install ubuntu-tweak
