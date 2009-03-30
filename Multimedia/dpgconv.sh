#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2008 陳信屹 Hsin Yi Chen (hychen) <ossug.hychen@gmail.com>
# Last Modified: 30 Mar 2009
#
# Download and install dpgconverter. dpgconvert is a video formate
# converter, whith do converting the video formate to DPG, which
# can watch in NDL.
#
# See more info in http://www.noeman.org/gsm/tutorials-tips/55563- \
# howto-converting-your-movies-dpg-format-moonshell-nintendo-ds.html
#
# Please run as root.
#
# @name_enUS '' 
# @name_zhTW '安裝DPG Converter影像轉檔程式'
# @desc_enUS 'Download and install dpgconverter. dpgconvert is a video formate
#             converter, whith do converting the video formate to DPG, which
#             can watch in NDL.'
# @desc_zhTW 'DPG Converter影像轉檔程式可將各種影像格式轉換為NDL可播放的DPG影像格式。'
# @category 'Multimedia'
# @maintaner '2008 陳信屹 Hsin Yi Chen (hychen) <ossug.hychen@gmail.com>'
# @author '2008 陳信屹 Hsin Yi Chen (hychen) <ossug.hychen@gmail.com>'
# @license 'GPL'
# @debian ''
# @ubuntu ''
# @platform 'i386 AMD64'

# Released under GNU General Public License
# http://hychen.wuweig.org/?p=353
 
mpeg_stat_ver="2.2"
mpeg_stat_tgz="mpeg_stat-$mpeg_stat_ver-src.tar.gz"
mpeg_state_dl_url="http://bmrc.berkeley.edu/ftp/pub/multimedia/mpeg/stat/$mpeg_stat_tgz"
  
dpgconv_ver="8"
dpgconv_file="dpgconv-$dpgconv_ver.py"
gpgconv_dl_url="http://theli.ho.com.ua/dpgconv/$dpgconv_file"
   
echo "安裝 dpg-format media converter"
sudo apt-get -y install mencoder mplayer
mkdir -p temp/dpgconv
TOP_DIR=`pwd`
cd temp/dpgconv

echo "正在安裝mpeg_stat..."
$WGET $mpeg_state_dl_url
tar xzvf $mpeg_stat_tgz
cd mpeg_stat
make
sudo cp mpeg_stat /usr/bin/mpeg_stat
sudo cp mpeg_stat.1 /usr/bin/mpeg_stat.1
echo "正在安裝dpgconv 8..."
$WGET $gpgconv_dl_url
chmod 755 $dpgconv_file
sudo cp $dpgconv_file /usr/bin/$dpgconv_file

cd "$TOP_DIR"

#END
