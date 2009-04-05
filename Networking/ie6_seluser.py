#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <bill3321 -AT- gmail.com>
# Last Midified : 30 Mar 2009
# Install Microsoft Internet Explorer for one or more users.
# Released under GNU General Public License
#
# @category 'Networking'
# @maintaner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <bill3321 -AT- gmail.com>'
# @author '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <bill3321 -AT- gmail.com>'
# @license 'GPL'
# @parent 'Networking/ie6'
# @hide

import os
import pygtk
pygtk.require('2.0')
import gtk
import commands

ie4linux_dir =  os.environ['IE4LINUX_DIR']

def ie4linux_cmd(user_name):
    ie6_path = '/home/' + user_name + '/bin/ie6'
    install_cmd = 'su -c "%s/ies4linux --no-gui --locale TW --no-desktop-icon" %s' % (ie4linux_dir,user_name)
    try_times = 0
    while try_times < 5:
     if os.path.exists(ie6_path):
      after_install='./ie6_after.sh %s' % (user_name)
      os.system(after_install)
      break
     else:
      os.system(install_cmd)
      try_times += 1
    
    


def sel_users():
    USERS_LIST=commands.getoutput('cat /etc/passwd | grep bash | cut -d ":" -f 1').split('\n')
    USERS_LIST.pop(0)

    dlg_bts={}
    dlg = gtk.MessageDialog \
        (None, gtk.DIALOG_MODAL,  \
        gtk.MESSAGE_QUESTION, \
        gtk.BUTTONS_OK)
    dlg.set_markup ('<b>請選擇欲安裝Internet Explorer的使用者細項：</b>')
    for user_name in USERS_LIST:
     user_name_box= user_name + "_box"
     dlg_bts[user_name_box]=gtk.CheckButton(user_name)
     dlg.vbox.pack_start(dlg_bts[user_name_box],True,True,2)

    dlg.vbox.show_all ()

    ret = dlg.run ()
    for user_name in USERS_LIST:
     user_name_box= user_name + "_box"
     if dlg_bts[user_name_box].get_active():
      print "正在為" + user_name + "安裝Internet Explorer..."
      ie4linux_cmd(user_name)
#      ie4linux_cmd = "su -c \"im-switch -s %s\" %s" % (selected_cin, user_name)
#      os.system(ie4linux_cmd)


def user_scope ():

    USERS_LIST=commands.getoutput('cat /etc/passwd | grep bash | cut -d ":" -f 1').split('\n')
    USERS_LIST.pop(0)

    dlg = gtk.MessageDialog \
        (None, gtk.DIALOG_MODAL,  \
        gtk.MESSAGE_QUESTION, \
        gtk.BUTTONS_OK)
    dlg.set_markup ('<b>請選擇您欲安裝Internet Explorer的使用者：</b>')

    currectuser_btn=gtk.RadioButton (None, '只套用到我自己')
    dlg.vbox.pack_start (currectuser_btn, False, True, 2)
    alluser_btn =gtk.RadioButton (currectuser_btn ,'套用到所有使用者')
    dlg.vbox.pack_start (alluser_btn, False, True, 2)
    seluser_btn =gtk.RadioButton (currectuser_btn ,'選擇套用的使用者')
    dlg.vbox.pack_start (seluser_btn, False, True, 2)

    dlg.vbox.show_all ()

    ret = dlg.run ()
    currectuser = currectuser_btn.get_active()
    alluser = alluser_btn.get_active()
    seluser = seluser_btn.get_active()

    dlg.destroy ()
    if ret != gtk.RESPONSE_OK:
       return False
    while gtk.events_pending ():
      gtk.main_iteration ()

    if currectuser:
       user_name =  os.environ['REAL_USER']
       print "正在為當前使用者安裝Internet Explorer..."
       ie4linux_cmd(user_name)
    elif alluser:
       print "正在為所有使用者安裝Internet Explorer..."
       for user_name in USERS_LIST:
	ie4linux_cmd(user_name)
    elif seluser:
       sel_users()


user_scope()
