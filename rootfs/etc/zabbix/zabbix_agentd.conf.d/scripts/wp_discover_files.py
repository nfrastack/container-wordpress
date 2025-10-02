#!/usr/bin/python
# SPDX-FileCopyrightText: © 2025 Nfrastack <code@nfrastack.com>
#
# SPDX-License-Identifier: MIT

import os,json,sys,re
from base64 import b64decode

data = []

if len(sys.argv)<3:
  print json.dumps({'data':data,'error':'Usage: discover_files.py path b64_fname_regex'})
  sys.exit(1)

if not os.path.isdir(sys.argv[1]):
  print json.dumps({'data':data,'error': sys.argv[1]+' is not a directory'})
  sys.exit(1)

def find_all(name, path):
  result = []
  # try to decode name
  try:
    name=b64decode(name)
  except Exception as e:
    print json.dumps({'data':data,'error': 'Can\'t decode '+name+' as base64. '+str(e)})
    sys.exit(1)
  # try regex
  try:
    reobj = re.compile(name)
  except Exception as e:
    print json.dumps({'data':data,'error': 'Can\'t compile '+name+' as regex. '+str(e)})
    sys.exit(1)
  for root, dirs, files in os.walk(path):
    for fname in files:
      if reobj.search(fname):
        result.append(os.path.join(root, fname))
  return result

for fpath in find_all(sys.argv[2],sys.argv[1]):
  data.append({'{#FDIR}':os.path.dirname(fpath),'{#FDIRNAME}':os.path.basename(os.path.dirname(fpath)),'{#FPATH}':fpath,'{#FNAME}':os.path.basename(fpath)})

print json.dumps({'data':data})
