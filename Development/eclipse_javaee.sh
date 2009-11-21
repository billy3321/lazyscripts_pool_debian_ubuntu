#!/bin/bash 
# -*- coding: utf-8 -*-
# Copyright (C) 2009 王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>
#
# @name_enUS 'Install Eclipse JavaEE 3.5'
# @name_zhTW '安裝 Eclipse JavaEE 3.5'
# @desc_enUS 'Eclipse is a multi-language software development platform comprising an IDE and a plug-in system to extend it.'
# @desc_zhTW '一個跨平台的程式撰寫工具。'
# @warn_enUS ''
# @warn_zhTW '注意！！Eclipse安裝檔152MB ，請衡量當地網路環境，以決定是否安裝。'
# @category 'Development'
# @maintaner '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @author '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @license 'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'

echo "安裝 Eclipse"

mkdir -p ./temp/eclipse

TOP_DIR=`pwd`


cd ./temp/eclipse

# Download Eclipse
case $PLAT_NAME in
		"i386")
            $WGET 'http://eclipse.stu.edu.tw/technology/epp/downloads/release/galileo/SR1/eclipse-java-galileo-SR1-linux-gtk.tar.gz'
		;;
		"x86_64")
            $WGET 'http://eclipse.stu.edu.tw/technology/epp/downloads/release/galileo/SR1/eclipse-java-galileo-SR1-linux-gtk-x86_64.tar.gz'
		;;
		*)
			echo "Sorry, Lazyscripts not support $PLAT_NAME."
		;;
esac

# Install Eclipse

tar zxvf ./*.tar.gz -C /opt/

cd $TOP_DIR

# build menu entry

cat > /usr/bin/eclipse << EOF
#!/bin/bash
/opt/eclipse/eclipse
EOF

cat > /usr/share/applications/eclipse.desktop << EOF
[Desktop Entry]
Name=Eclipse
Comment=Develop applications in a variety of different programming languages
Exec=/usr/bin/eclipse
Icon=eclipse48.png
Terminal=false
Type=Application
Categories=Development;
StartupNotify=true
EOF

#修正權限問題
chmod a+x /usr/bin/eclipse
chown -R root.root /opt/eclipse

#apt-get -y --force-yes  install eclipse

#END
