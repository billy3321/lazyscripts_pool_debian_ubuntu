#!/bin/bash 
# -*- coding: utf-8 -*-
# Copyright (C) 2009 王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>
#
# @name_enUS 'Install Songbird'
# @name_zhTW '安裝 Songbird'
# @desc_enUS 'Songbird is an open-source customizable music player that is under active development.'
# @desc_zhTW 'Songbird 是一個由Mozilla所開發的開放源碼的音樂播放軟體，和Firefox一樣支援許多套件來增強功能。'
# @warn_enUS ''
# @warn_zhTW ''
# @category 'Multimedia'
# @maintaner '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @author '王綱民 Kang-Min Wang (Aminzai,阿民) <lagunawang -AT- gmail.com>'
# @license 'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'

echo "安裝 Songbird"

mkdir -p ./temp/songbird/

TOP_DIR=$PWD

cd ./temp/songbird/

#Get songbird installation file

case $PLAT_NAME in
	"i386")
		$WGET 'http://download.songbirdnest.com/installer/linux/i686/Songbird_1.1.2-1042_linux-i686.tar.gz'
	;;
	"x86_64")
		$WGET 'http://download.songbirdnest.com/installer/linux/x86_64/Songbird_1.1.2-1042_linux-x86_64.tar.gz'
	;;
	*)
		echo "Sorry, Lazyscripts not support $PLAT_NAME"
	;;
esac

tar zxvf *.tar.gz -C /opt/ 

cat > /usr/bin/songbird << EOF
#!/bin/bash
/opt/Songbird/songbird
EOF

cat > /usr/share/applications/songbird.desktop << EOF
[Desktop Entry]
Name=Songbird
Comment=Songbird is an open-source customizable music player that's under active development.
Exec=/usr/bin/songbird
Icon=/opt/Songbird/songbird.png
Terminal=false
Type=Application
Categories=Development;
StartupNotify=true
EOF

chmod a+x /usr/bin/songbird
chown -R root.root /opt/Songbir/
chmod -R a+rx /opt/Songbird/

#END
