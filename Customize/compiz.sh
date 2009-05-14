#!/bin/bash 
# -*- coding: utf-8 -*-
# Copyright (C) 2009 王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>
#
# @name_enUS 'Install Compiz Fusion'
# @name_zhTW '安裝 Compiz Fusion 特效'
# @desc_enUS ''
# @desc_zhTW '可以讓你的系統擁有更多桌面特效，例如：旋轉桌面、毛玻璃效果...etc'
# @warn_enUS ''
# @warn_zhTW '注意！！因為此特效需要較多的顯示硬體支援，所以建議使用有獨立顯示卡的電腦，並先需在安裝前先把驅動程式安裝完畢，以保系統的順暢。'
# @category 'Customize'
# @maintaner '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @author '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @license 'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'

echo "安裝 Compiz Fusion"


apt-get -y --force-yes install compiz fusion-icon compizconfig-settings-manager
#Add Compiz Fusion Plugin
apt-get -y --force-yes install compiz-fusion-plugins-main compiz-fusion-plugins-extra
#if emerald is not find, emerald will not installed
apt-get -y --force-yes install emerald

echo "Start Build autostart"
USERS=$(cat /etc/passwd | grep bash | cut -d ":" -f 1)

for u in $USERS
do 

    #get user home directory
    UserHome=$(finger $u | grep 'Directory' | cut -d " " -f 2 )

    #build user home autostart directory
    UserHome_autostart=$UserHome/.config/autostart
    
    #Build Directory
    mkdir -p $UserHome_autostart/

cat > $UserHome_autostart/fusion-icon.desktop <<EOF
[Desktop Entry]
Type=Application
Encoding=UTF-8
Version=1.0
Name=沒有名稱
Name[zh_TW]=Compiz
Exec=fusion-icon
X-GNOME-Autostart-enabled=true
EOF

    chown -R ${u}.${u} ${UserHome_autostart}/

done

#END
