#!/usr/bin/env pythource in sourceslist:
# -*- coding: UTF-8 -*-
# Copyright (C) 2007 朱昱任 (Yuren Ju) <yurenju -AT- gmail.com>
# Copyright (C) 2008 林哲瑋 Zhe-Wei Lin (billy3321,雨蒼) <billy3321 -AT- gmail.com>
# Last Modified: 29 Dec 2008
# Add source into source.list through arguments.
# Released under GNU General Public License

import aptsources
from aptsources.sourceslist import SourcesList
import aptsources.distro
import sys

def main ():
    uri = sys.argv[1].strip ()
    dist = sys.argv[2].strip ()
    comps = sys.argv[3].split (' ')
    comment = sys.argv[4].strip ()

    distro = aptsources.distro.get_distro ()
    sourceslist = SourcesList ()
    
    for source in sourceslist:
      if source.disabled == False:
        if source.uri == uri and source.comps == comps:
	  print "套件庫已存在。"
        else:
          distro.get_sources (sourceslist)
          distro.add_source (uri=uri, dist=dist, comps=comps, comment=comment)

    sourceslist.backup ()
    sourceslist.save ()

    return 0

if __name__ == "__main__":
    main ()

