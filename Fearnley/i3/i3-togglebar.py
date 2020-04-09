#!/usr/bin/env python3

import i3
import sys

def strToBool(arg):
    return arg.lower() in ["true", "1", "show"]

if sys.argv[0] != sys.argv[-1]:
    mode = strToBool(sys.argv[1])
else:
    mode = None

def toggleBar(mode=None):
    if mode is None:
        i3.bar('mode', 'toggle') 
    elif mode:
        i3.bar('mode', 'dock')
    elif not mode:
        i3.bar('mode', 'invisible')

toggleBar(mode)
