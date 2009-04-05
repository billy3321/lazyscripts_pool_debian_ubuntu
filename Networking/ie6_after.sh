#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2007 洪任諭 Hong Jen Yee (PCMan) <pcman.tw@gmail.com>
# Copyright (C) 2008 朱昱任 (Yuren Ju) <yurenju -AT- gmail.com>
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <bill3321 -AT- gmail.com>
# Config desktop icon and some setting after ie6 installation.
# Last Modified: 30 Mar 2009
#
# @category 'Networking'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <bill3321 -AT- gmail.com>'
# @author '洪任諭 Hong Jen Yee (PCMan) <pcman.tw@gmail.com>'
# @author '朱昱任 (Yuren Ju) <yurenju -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <bill3321 -AT- gmail.com>'
# @license 'GPL'
# @parent 'Networking/ie6'
# @hide

case $DISTRIB_ID in 
    Ubuntu)
    CORRECT_DESKTOP_DIR="/home/${1}/桌面"
    ;;
    Debian)
    CORRECT_DESKTOP_DIR="/home/${1}/Desktop"
    ;;
esac
CORRECT_HOME="/home/${1}"
CORRECT_USER="$1"

cd $TMP_DIR
echo "Make ie6 desktop icon for ${CORRECT_USER}"
# Since the desktop icon provided by ies4linux is extremely ugly,
# we create our own desktop icon using the original icon of IE6.
if [ ! -s /usr/share/pixmaps/msie6.png ];then
 wrestool --type=14 --name=-32528 -x --output=. "$CORRECT_HOME/.ies4linux/ie6/drive_c/Program Files/Internet Explorer/iexplore.exe"
 icotool -x --icon --width=48 --height=48  --bit-depth=32 --output=. *.ico
 mv "iexplore.exe_14_32528_1028_7_48x48x32.png" "/usr/share/pixmaps/msie6.png"
fi
# check if ~/bin/ie6 is exists.
if [ ! -L ${CORRECT_HOME}/bin/ie6 ];then
 ln -s ${CORRECT_HOME}/.ies4linux/bin/ie6 ${CORRECT_HOME}/bin/ie6
fi
# move the generated icon to system icon dir  
if [ ! -s "/usr/share/applications/msie6.desktop" ];then
cat > "/usr/share/applications/msie6.desktop" << EOF
[Desktop Entry]
Version=1.0
Icon=/usr/share/pixmaps/msie6.png
Exec=ie6
Name=Internet Explorer 6.0
GenericName=Web Browser
GenericName[zh_TW]=網路瀏覽器
Comment=Microsoft Internet Explorer 6.0 瀏覽器
Encoding=UTF-8
Terminal=False
Type=Application
Categories=Categories=Application;Network;
EOF
fi

if [ ! -d $CORRECT_DESKTOP_DIR ];then
 mkdir -p $CORRECT_DESKTOP_DIR
 chown -R ${CORRECT_USER}.${CORRECT_USER} ${CORRECT_DESKTOP_DIR}
fi

su -c "cp \"/usr/share/applications/msie6.desktop\" \"$CORRECT_DESKTOP_DIR\" " $CORRECT_USER
su -c "mkdir -p \"$CORRECT_HOME/.wine/drive_c/windows/fonts/\" " $CORRECT_USER
su -c "mkdir -p \"$CORRECT_HOME/.ies4linux/ie6/drive_c/windows/fonts/\" " $CORRECT_USER
su -c "ln -sf /usr/share/fonts/truetype/arphic/uming.ttf \"$CORRECT_HOME/.wine/drive_c/windows/fonts/uming.ttf\" " $CORRECT_USER
su -c "ln -sf /usr/share/fonts/truetype/arphic/uming.ttf \"$CORRECT_HOME/.ies4linux/ie6/drive_c/windows/fonts/uming.ttf\" " $CORRECT_USER

cd $TOP_DIR
