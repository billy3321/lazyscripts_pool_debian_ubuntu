#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2009 王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>
#
# @name_enUS 'Install Stellarium'
# @name_zhTW '安裝 Stellarium'
# @desc_enUS 'Stellarium is a free open source planetarium for your computer. It shows a realistic sky in 3D, just like what you see with the naked eye, binoculars or a telescope.'
# @desc_zhTW 'Stellarium是一套開放原始碼的免費星圖軟體，讓你可以在自家電腦螢幕上享受一個完全屬於自己的超逼真立體星空，就和你在夜闌人靜時仰頭望向天際所能夠看到的東西一模一樣'
# @warn_enUS ''
# @warn_zhTW ''
# @category 'Productivity'
# @maintaner '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @author '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @license 'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'

echo "安裝 Stellarium"

# Stellarium zh-TW configration
# author: timdream, Aug 2009
# http://timc.idv.tw/

# required package
apt-get -f --force-yes install stellarium stellarium-data

if [ $DISTRO_ID = "Ubuntu" ]; then 
    apt-get -f --force-yes install ttf-droid
    export STELLARIUM_FONT="DroidSansFallback.ttf";
    export STELLARIUM_FONT_DIR="ttf_droid";
elif [ $DISTRO_ID = "Debian" ]; then
    apt-get -f --force-yes install ttf-wqy-zenhei
    export STELLARIUM_FONT="wqy-zenhei.ttc";
    export STELLARIUM_FONT_DIR="wqy";
fi

export STELLARIUM_DATA='/usr/share/stellarium/data';

echo "Add chinese language support."

# ln font
ln -s -f /usr/share/fonts/truetype/${STELLARIUM_FONT_DIR}/${STELLARIUM_FONT} ${STELLARIUM_DATA}/${STELLARIUM_FONT}

# config.ini & default_config.ini sed options
export CONFIG_SED="-r -e 's/^(app|sky)_locale([\t ]*)=([\t ]*).+$/\1_locale\2=\3zh_TW/g' 
-e 's/^base_font_name([\t ]*)=([\t ]*).+$/base_font_name\1=\2"${STELLARIUM_FONT}"/g' 
-e 's/^location([\t ]*)=([\t ]*).+$/location\1=\2中央大學鹿林天文台, Taiwan/g' ";

# fontmap.dat
sed -i -r -e "s/^zh_(HK|TW).+$/zh_\1\t"${STELLARIUM_FONT}"\t1.2\t"${STELLARIUM_FONT}"\t1.2/g" \
$STELLARIUM_DATA/fontmap.dat

# user_locations.txt
echo -e '中央大學鹿林天文台\t嘉義縣/南投縣\ttw\t0\t0,1\t23.47N\t120.88E\t2862' | \
tee $STELLARIUM_DATA/user_locations.txt > /dev/null

# default_config.ini
eval sed -i $CONFIG_SED $STELLARIUM_DATA/default_config.ini

# config.ini (user, don't sudo)
# don't do anything unless file exists
# -- stellarium will copy default_config.ini at start up.

#Get all user
USERS_DIR=$(cat /etc/passwd | grep bash | cut -d ":" -f 6)

for u in $USERS_DIR
do 
    [ -e ${u}.stellarium/config.ini ] \
        && eval sed -i $CONFIG_SED ${u}.stellarium/config.ini
done

