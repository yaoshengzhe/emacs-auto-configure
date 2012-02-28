#! /usr/bin/python

import sys
import os
import fileinput

def ensure_dir_exist(dir_name):
    d = os.path.dirname(dir_name)
    if not os.path.exists(d):
        os.makedirs(dir_name)

if __name__ == '__main__':
    home = os.getenv('HOME')
    folders = ['.emacs', '.emacs.d', '.templates']
    current_folder = os.path.abspath(os.path.dirname(__file__))

    for folder in folders:
        
        src_path = os.path.join(current_folder, folder)
        ensure_dir_exist(src_path)
        os.system('cp -rf %s %s' % (src_path, home))

    emacs_home = os.path.join(home, '.emacs')
    
    for line in fileinput.FileInput(emacs_home, inplace=1):
        line = line.replace("$1", home)
        print line
