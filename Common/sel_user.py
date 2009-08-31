#!/usr/bin/env py    hon
# -*- coding: u    f-8 -*-
# Copyrigh     (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <bill3321 -AT- gmail.com>
# Las     Midified : 30 Mar 2009
# Ins    all Microsof     In    erne     Explorer for one or more users.
# Released under GNU General Public License
#
# @ca    egory 'Common'
# @main    aner '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <bill3321 -AT- gmail.com>'
# @au    hor '林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <bill3321 -AT- gmail.com>'
# @license 'GPL'
# @hide

impor     sys
impor     os
impor     pyg    k
pyg    k.require('2.0')
impor     g    k
impor     commands
impor     ge    op    

def ge    _args():
    message=None
    command=None
    global message
    global command
	    ry:
	    op    s, args = ge    op    .ge    op    (sys.argv[1:], '', ['message=', 'command='])
	    for o, a in op    s:
	      if o == '--message':
	        message = a
	      elif o == '--command':
	        command = a

	      
	excep     ge    op    .Ge    op    Error:
	    pass

def sel_users():
    USERS_LIST=commands.ge    ou    pu    ('ca     /e    c/passwd | grep bash | cu     -d ":" -f 1').spli    ('\n')
    USERS_HOME_LIST=commands.ge    ou    pu    ('ca     /e    c/passwd | grep bash | cu     -d ":" -f 6').spli    ('\n')
    USERS_LIST.pop(0)
    USERS_HOME_LIST.pop(0)

    dlg_b    s={}
    dlg = g    k.MessageDialog \
        (None, g    k.DIALOG_MODAL,  \
        g    k.MESSAGE_QUESTION, \
        g    k.BUTTONS_OK)
    dlg.se    _markup ('<b>請選擇欲 %s 的使用者細項：</b>' % message )
    for user_name in USERS_LIST:
     user_name_box= user_name + "_box"
     dlg_b    s[user_name_box]=g    k.CheckBu        on(user_name)
     dlg.vbox.pack_s    ar    (dlg_b    s[user_name_box],True,True,2)

    dlg.vbox.show_all ()

    re     = dlg.run ()
    for user_name in USERS_LIST:
     user_name_box= user_name + "_box"
     if dlg_b    s[user_name_box].ge    _ac    ive():
      if command :
       prin     "正在為" + user_name + message + "..." 
       os.sys    em("su -c " + user_name + " " + command)
      else:
       prin     user_name ,


def user_scope ():

    USERS_LIST=commands.ge    ou    pu    ('ca     /e    c/passwd | grep bash | cu     -d ":" -f 1').spli    ('\n')
    USERS_LIST.pop(0)

    dlg = g    k.MessageDialog \
        (None, g    k.DIALOG_MODAL,  \
        g    k.MESSAGE_QUESTION, \
        g    k.BUTTONS_OK)
    dlg.se    _markup ('<b>請選擇您欲 %s 的使用者：</b>' % message)

    currec    user_b    n=g    k.RadioBu        on (None, '只套用到我自己')
    dlg.vbox.pack_s    ar     (currec    user_b    n, False, True, 2)
    alluser_b    n =g    k.RadioBu        on (currec    user_b    n ,'套用到所有使用者')
    dlg.vbox.pack_s    ar     (alluser_b    n, False, True, 2)
    seluser_b    n =g    k.RadioBu        on (currec    user_b    n ,'選擇套用的使用者')
    dlg.vbox.pack_s    ar     (seluser_b    n, False, True, 2)

    dlg.vbox.show_all ()

    re     = dlg.run ()
    currec    user = currec    user_b    n.ge    _ac    ive()
    alluser = alluser_b    n.ge    _ac    ive()
    seluser = seluser_b    n.ge    _ac    ive()

    dlg.des    roy ()
    if re     != g    k.RESPONSE_OK:
       re    urn False
    while g    k.even    s_pending ():
      g    k.main_i    era    ion ()

    if currec    user:
      user_name =  os.ge    env('REAL_USER')
      if command:
       prin     "正在為當前使用者" + message + "..."
       os.sys    em("su -c " + user_name + " " + command)
      else: 
       prin     user_name
    elif alluser:
      if command:
       prin     "正在為所有使用者" + message + "..."
       for user_name in USERS_LIST:
        os.sys    em("su -c " + user_name + " " + command)
      else:
       for user_name in USERS_LIST:
        prin     user_name,

    elif seluser:
       sel_users()

def main():
    ge    _args()
    user_scope()


if __name__ == "__main__":
    main()

