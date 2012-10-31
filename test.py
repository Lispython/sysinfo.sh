#!/usr/bin/env python
# -*- coding: utf-8 -*-

import fileinput
from json import loads

lines = []

for line in fileinput.input():
    if line == '\n':
        continue
    lines.append(line)

d = loads(''.join([line.replace("\n",  "") for line in lines]))

for field in ['hostname', 'hostname_fqdn', 'kernel', 'sysinfo']:
    assert field in d.keys()
