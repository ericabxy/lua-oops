#!/usr/bin/env python
import os
import sys

def process_lua_template(path):
    filename = os.path.basename(path)
    name = os.path.splitext(filename)[0]
    class_s = "".join(word.title() for word in name.split("_"))
    with open(path, 'r') as file:
        output = file.read()
    output = output.format(modname = name, classname = class_s, parent = "parent")
    if output == '': return
    with open(path, 'w') as file:
        file.write(output)

for arg in sys.argv[1:]:
    if not os.path.isfile(arg): continue
    if os.path.splitext(arg)[1] == '.lua':
        process_lua_template(arg)
