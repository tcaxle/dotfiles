#!/usr/bin/env python

import i3
success = i3.layout('splith')
if success:
    print('Successfully changed layout of the current workspace.')
