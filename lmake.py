import os
from os import chdir
from os.path import dirname, realpath, isfile
from subprocess import call, check_output

# file for build latex in sublime, all details to build pdf are written in Makefile

curpath = os.path.realpath('.')
path=curpath

def lmake(path):
  while True:
      if isfile(path+'/Makefile'):
          print path
          chdir(path)
          call("make", shell=True)
          break
      else:
          oldpath=path
          path=dirname(path)
          # print oldpath, path
          if oldpath == path:
            print 'no make file. ended'
            return

lmake(path)