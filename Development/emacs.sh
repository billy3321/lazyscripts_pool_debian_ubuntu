#!/bin/bash 
# -*- coding: utf-8 -*-
# vim:et:fdm=marker:fdl=1:
# GPL
#
# @name_enUS 'Install Emacs'
# @name_zhTW '安裝 Emacs'
# @desc_enUS 'Emacs Editor'  
# @desc_zhTW 'Emacs 編輯器'
# @warn_enUS ''
# @warn_zhTW ''
# @category  'Development'
# @maintaner '林佑安 c9s (Cornelius) <cornelius.howl _at_ gmail.com>'
# @author    '林佑安 c9s (Cornelius) <cornelius.howl _at_ gmail.com>'
# @license   'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'

echo "安裝 Emacs"
apt-get -y --force-yes install emacs 
# basic emacs.d  #{{{

# }}}
# emacs colorscheme {{{
# fetch emacs color scheme
# }}}

#END
