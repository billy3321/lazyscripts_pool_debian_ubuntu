#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 2 Dec 2008
# Released under GNU General Public License
# Please run as root.
#
# @name_zhTW '安裝模擬交通'
# @desc_zhTW '模擬交通(Simutrans)是一是一個免費開放原始碼交通模擬電腦遊戲，
#             這個遊戲集中於貨運，集體運輸，郵遞及電力輸送，玩家可以從遊戲
#             中興建城市、道路、鐵路、機場、運河等城市設施。'
# @category 'Game'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @license 'GPL'
# @ubuntu 
# @debian
# @platform 'i386 amd64'

apt-get -y --force-yes install simutrans
#/usr/share/games/simutrans/pak64|128|96.comics

mkdir -p temp/simutrans
pushd temp/simutrans

BASE_URL="http://sourceforge.net/projects/simutrans/files/"

SEL_PAKSET=$(zenity --list --title="Select PakSets" --checklist --column "" --column "PakSets Name" \
FALSE pak128 FALSE pak96.comic FALSE pakHAJO FALSE pakGerman FALSE pak128.Britain FALSE pak32.comic FALSE pak192.comic)

if echo "$SEL_PAKSET" | grep "pak128" &> /dev/null ; then
$WGET ${BASE_URL}pak128/pak128-1.4.5--102.0.zip
unzip pak128-1.4.5--102.0.zip -d /usr/share/games/

elif echo "$SEL_PAKSET" | grep "pak96.comic" &> /dev/null ; then
$WGET ${BASE_URL}pak96.comic/pak96.comic_0-4-6_102-0.zip
unzip pak96.comic_0-4-6_102-0.zip -d /usr/share/games/

elif echo "$SEL_PAKSET" | grep "pakHAJO" &> /dev/null ; then
$WGET ${BASE_URL}pakHAJO/pakHAJO_102-0.zip
unzip pakHAJO_102-0.zip -d /usr/share/games/

elif echo "$SEL_PAKSET" | grep "pakGerman" &> /dev/null ; then
$WGET ${BASE_URL}pak.german/pak.german_0-102-0_full.zip
unzip pak.german_0-102-0_full.zip -d /usr/share/games/

elif echo "$SEL_PAKSET" | grep "pak128.Britain" &> /dev/null ; then
$WGET ${BASE_URL}pak128.britain/pak128britain_1-0-3_0-102.zip
unzip pak128britain_1-0-3_0-102.zip -d /usr/share/games/

elif echo "$SEL_PAKSET" | grep "pak32.comic" &> /dev/null ; then
$WGET ${BASE_URL}pak32.comic/pak32.comic_102-0.zip
unzip pak32.comic_102-0.zip -d /usr/share/games/

elif echo "$SEL_PAKSET" | grep "pak192.comic" &> /dev/null ; then
$WGET ${BASE_URL}pak192.comic/pak192.comic_0-1-1_102-0.zip
unzip pak192.comic_0-1-1_102-0.zip -d /usr/share/games/
fi



popd
