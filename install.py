#!/usr/bin/python

import subprocess

print 'Choice what you want to install:'
print '1 - git, java, gradle, vim and zsh'
print '2 - virtualbox utils'
print '3 - multimidia packages'

options = [1, 2, 3]
user_input = raw_input('Enter the options separated by comma: ')
user_input = [int(i) for i in user_input.split(',')]

if not set(user_input).issubset(set(options)):
  print "Invalid input"
  exit

if 1 in user_input:
  user_data = raw_input('Enter your git name, email: ')
  name, email = [str(i).strip() for i in user_data.split(',')]
  subprocess.call(['./git.sh', name, email])
  subprocess.call(['./java.sh'])
  subprocess.call(['./vim.sh'])
  subprocess.call(['./zsh.sh'])

if 2 in user_input:
  subprocess.call(['./vbox.sh'])

if 3 in user_input:
  subprocess.call(['./multimidia.sh'])
