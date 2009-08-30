#!/bin/bash
# -*- coding: utf-8 -*-
# Copyright (C) 2009 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 2 Dec 2008
# Released under GNU General Public License
# Please run as root.
#
# @name_zhTW '加入控制中心按鈕'
# @desc_zhTW 'Debian 與 Ubuntu 預設將 Gnome 控制中心的按鈕隱藏起來，
#             選取本功能可將隱藏的按鈕顯示出來。'
# @category 'Customize'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>'
# @license 'GPL'
# @ubuntu 
# @platform 'i386 amd64'

apt-get -y --force-yes install gnome-control-center

if [ -f "/usr/share/applications/gnomecc.desktop" ]; then 
    sed -e '/^NoDisplay/s/true/false/g' /usr/share/applications/gnomecc.desktop > gnomecc.desktop.tmp
    mv gnomecc.desktop.tmp /usr/share/applications/gnomecc.desktop
else

cat > "/usr/share/applications/gnomecc.desktop" << EOF
[Desktop Entry]
Name=Control Center
Name[ar]=مركز التحكّم
Name[as]=Control Center
Name[be]=Цэнтар кіраваньня
Name[be@latin]=Centar kiravańnia
Name[bg]=Контролен център
Name[bn]=Control Center
Name[bn_IN]=Control Center
Name[ca]=Centre de control
Name[cs]=Ovládací centrum
Name[da]=Kontrolcenter
Name[de]=Kontrollzentrum
Name[dz]=ཚད་འཛིན་ལྟེ་བ་
Name[el]=Κέντρο ελέγχου
Name[en_GB]=Control Centre
Name[es]=Centro de control
Name[et]=Juhtimiskeskus
Name[eu]=Kontrol-zentroa
Name[fi]=Hallintakeskus
Name[fr]=Centre de contrôle
Name[ga]=Lárionad Rialaithe
Name[gl]=Centro de control
Name[gu]=નિયંત્રણ કેન્દ્ર
Name[he]=לוח בקרה
Name[hi]=नियंत्रण केंद्र
Name[hu]=Vezérlőközpont
Name[it]=Centro di controllo
Name[ja]=コントロール・センター
Name[ka]=მართვის ცენტრი
Name[kn]=ನಿಯಂತ್ರಣ ಕೇಂದ್ರ
Name[ko]=그놈 제어판
Name[lt]=Valdymo centras
Name[lv]=Kontroles centrs
Name[mk]=Контролен центар
Name[ml]=നിയന്ത്രണകേന്ദ്രം
Name[mr]=नियंत्रण केंद्र
Name[nb]=Kontrollsenter
Name[ne]=नियन्त्रण केन्द्र
Name[nl]=Configuratiecentrum
Name[nn]=Kontrollsenter
Name[pa]=ਕੰਟਰੋਲ ਕੇਂਦਰ
Name[pl]=Centrum sterowania
Name[pt]=Centro de Controlo
Name[pt_BR]=Centro de Controle
Name[ru]=Центр управления
Name[sk]=Ovládacie centrum
Name[sl]=Nadzorno središče
Name[sr]=Управљачки центар
Name[sr@Latn]=Upravljački centar
Name[sv]=Kontrollpanel
Name[ta]=கட்டுப்பாட்டு மையம்
Name[th]=ศูนย์ควบคุม
Name[tr]=Kontrol Merkezi
Name[uk]=Центр керування
Name[vi]=Trung tâm điều khiển
Name[zh_CN]=控制中心
Name[zh_HK]=控制中心
Name[zh_TW]=控制中心
GenericName=The GNOME configuration tool
GenericName[af]=Die GNOME-konfigurasienutsgoed
GenericName[ar]=أداة إعداد جنوم
GenericName[as]=GNOME বিন্যাস প্ৰক্ৰিয়া
GenericName[az]=GNOME quraşdırma avadanlığı
GenericName[be]=Сродак наладкі GNOME
GenericName[be@latin]=Pryłada kanfihuracyi GNOME
GenericName[bg]=Инструмент за настройки на GNOME
GenericName[bn]=গনোম কনফিগারেশন প্রক্রিয়া
GenericName[bn_IN]=গনোম কনফিগারেশন প্রক্রিয়া
GenericName[bs]=GNOME alat za podešavanje
GenericName[ca]=L'eina de configuració del GNOME
GenericName[cs]=Nástroj na nastavení prostředí GNOME
GenericName[cy]=Yr erfyn cyfluniad GNOME
GenericName[da]=Et centralt opsætningsværktøj til Gnome
GenericName[de]=Das GNOME-Konfigurationswerkzeug
GenericName[dz]=ཇི་ནོམ་རིམ་སྒྲིག་ལག་ཆས།
GenericName[el]=Το εργαλείο ρύθμισης του GNOME
GenericName[en_CA]=The GNOME configuration tool
GenericName[en_GB]=The GNOME configuration tool
GenericName[es]=La herramienta de configuración de GNOME
GenericName[et]=GNOME seadistusprogramm
GenericName[eu]=GNOMEren konfigurazio-tresna
GenericName[fa]=ابزار پیکربندی گنوم
GenericName[fi]=Gnomen hallintatyökalu
GenericName[fr]=L'outil de configuration de GNOME
GenericName[gl]=A ferramenta de configuración do Gnome
GenericName[gu]=જીનોમ રુપરેખાનું સાધન
GenericName[he]=כלי ההגדרה של GNOME
GenericName[hi]=गनोम कॉन्फ़िगरेशन उपकरण
GenericName[hr]=Alat za podešavanje GNOME-a
GenericName[hu]=A GNOME beállítóeszköze
GenericName[id]=Program pengatur sistem GNOME
GenericName[is]=GNOME stillingatækið
GenericName[it]=Strumento di configurazione per GNOME
GenericName[ja]=GNOME デスクトップの設定ツールです
GenericName[ka]=გნომის კონფიგურაციის ხელსაწყო
GenericName[kn]=GNOME ಸಂರಚನಾ ಉಪಕರಣ
GenericName[ko]=그놈 설정 도구
GenericName[ku]=Amûra veavakirinan ya GNOME
GenericName[lt]=GNOME konfigūravimo įrankis
GenericName[lv]=GNOME konfigurācijas rīks
GenericName[mg]=Ny fitaovana fikirakiran'ny GNOME
GenericName[mk]=Алатка за конфигурирање на GNOME
GenericName[ml]=ഗ്നോമിലെ ക്രമീകരണത്തിനുള്ള പണിയായുധം
GenericName[mn]=GNOME-тохируулгын хэрэгсэл
GenericName[mr]=GNOME
GenericName[ms]=Radas Konfigurasi GNOME
GenericName[nb]=Konfigurasjonsverktøy for GNOME
GenericName[ne]=जिनोम कन्फिगरेसन उपकरण
GenericName[nl]=Het Gnome-configuratieprogramma
GenericName[nn]=Oppsettsverktøy for GNOME
GenericName[nso]=Sedirišwa sa go fetola sebopego sa GNOME
GenericName[oc]=L'esplech de configuracion de GNOME
GenericName[pa]=ਗਨੋਮ ਸੰਰਚਨਾ ਸੰਦ
GenericName[pl]=Narzędzie konfiguracyjne GNOME
GenericName[pt]=A ferramenta de configuração GNOME
GenericName[pt_BR]=Ferramenta de configuração do GNOME
GenericName[ro]=Unealta de configurare GNOME
GenericName[ru]=Утилита настройки среды GNOME
GenericName[sk]=Nástroj pre nastavenie GNOME
GenericName[sl]=Nastavitveno orodje GNOME-a.
GenericName[sq]=Instrumenti i konfigurimit për GNOME
GenericName[sr]=Гномов алат за подешавање
GenericName[sr@Latn]=Gnomov alat za podešavanje
GenericName[sv]=Konfigurationsverktyget för GNOME
GenericName[ta]=கனோம் அமைவடிவு கருவி
GenericName[te]=GNOME ఆకృతీకరణ సాధనం
GenericName[th]=เครื่องมือปรับแต่งระบบของ GNOME
GenericName[tr]=GNOME yapılandırma aracı
GenericName[uk]=Засіб налаштовування GNOME
GenericName[vi]=Công cụ cấu hình GNOME
GenericName[wa]=L' usteye d' apontiaedje di GNOME
GenericName[xh]=Isixhobo sokumiselwa kwe-GNOME
GenericName[zh_CN]=GNOME 配置工具
GenericName[zh_HK]=GNOME 設定工具
GenericName[zh_TW]=GNOME 設定工具
GenericName[zu]=Ithulusi lokumisa lwe-GNOME
Icon=gnome-control-center
Exec=gnome-control-center
Terminal=false
Type=Application
StartupNotify=true
Categories=GNOME;GTK;Settings;
OnlyShowIn=GNOME;
X-GNOME-Bugzilla-Bugzilla=GNOME
X-GNOME-Bugzilla-Product=gnome-control-center
X-GNOME-Bugzilla-Component=shell
X-GNOME-Bugzilla-Version=2.22.2.1
NoDisplay=false
EOF
fi

