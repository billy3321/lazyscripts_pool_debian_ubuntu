#!/bin/bash 
# -*- coding: utf-8 -*-
# GPL
#
# @name_enUS 'Install CPANPLUS'
# @name_zhTW '安裝 CPANPLUS'
# @desc_enUS 'CPANPLUS is a module manager for Perl programming language.' 
# @desc_zhTW 'CPANPLUS 是 Perl 程式語言所提供的模組管理程式'
# @warn_enUS ''
# @warn_zhTW ''
# @category  'Development'
# @maintaner '林佑安 c9s (Cornelius) <cornelius.howl _at_ gmail.com>'
# @author    '林佑安 c9s (Cornelius) <cornelius.howl _at_ gmail.com>'
# @license   'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'

echo "安裝 CPANPLUS"
mkdir -p ./temp/cpanp
TOP_DIR=`pwd`
cd ./temp/cpanp

# cpanplus depends on cpan.
# we need to install cpan , bundle::cpan 
# so that we can install cpanplus

apt-get install cpan-libcpanplus-perl

# cpan CPAN
# cpan Bundle::CPAN
# cpan CPANPLUS

#END
