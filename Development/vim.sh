#!/bin/bash 
# -*- coding: utf-8 -*-
# vim:et:fdm=marker:fdl=1:
# GPL
#
# @name_enUS 'Install Vim'
# @name_zhTW '安裝 Vim'
# @desc_enUS 'Vim Editor'  
# @desc_zhTW 'Vim 編輯器'
# @warn_enUS ''
# @warn_zhTW ''
# @category  'Development'
# @maintaner '林佑安 c9s (Cornelius) <cornelius.howl _at_ gmail.com>'
# @author    '林佑安 c9s (Cornelius) <cornelius.howl _at_ gmail.com>'
# @license   'GPL'
# @debian
# @ubuntu 
# @platform 'i386 amd64'

echo "安裝 Vim"

apt-get install vim-full -y

# basic vimrc  #{{{
cp -v ~/.vimrc ~/.vimrc.bak.`date +%Y%m%d`
cat <<VIMRC  > ~/.vimrc
" lazyscript vimrc ====================================
" author: c9s

syntax on
filetype on
filetype plugin on
filetype indent on

" scroll jump
set sj=1
" scroll off
set so=6

set  wildmode=longest,list
set  wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git
" set wildoptions
set  winaltkeys=no

set et
set sw=4
set ts=4
set sts=4

set modeline
set mat=15
set ignorecase
set smartcase
set ruler is nowrap ai si hls sm bs=indent,eol,start 
set ff=unix

" encoding solutions
set fencs=utf-8,big5,euc-jp,utf-bom,iso8859-1
set fenc=utf-8 enc=utf-8 tenc=utf-8

" save view
autocmd  BufWinLeave *.*			silent mkview
autocmd  BufWinEnter *.*			silent loadview

" easytab
nm			<tab> v>
nm			<s-tab> v<
xmap		<tab> >gv
xmap		<s-tab> <gv

" command mode mapping:
" command line jump to head , end
cm      <c-a>   <home>
cm      <c-e>   <end>

" back one character:
cno  <c-b>      <left>
cno  <c-d>      <del>
cno  <c-f>      <right>
cno  <c-n>      <down>
cno  <c-p>      <up>

com! -bang -nargs=? QFix cal QFixToggle(<bang>0)
fu! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  en
endf   
nn      <leader>q :QFix<cr>


VIMRC
#    }}}
# vim colorscheme {{{
# fetch vim color scheme
# from: http://www.cs.cmu.edu/~maverick/VimColorSchemeTest/
mkdir -p ~/.vim/color
$WGET http://www.cs.cmu.edu/~maverick/VimColorSchemeTest/rdark.vim -O~/.vim/color/rdark.vim
echo "colors rdark" >> ~/.gvimrc
# }}}

#END
