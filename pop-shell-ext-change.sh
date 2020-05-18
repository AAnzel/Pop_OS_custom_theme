#!/bin/bash

# This script changes active color hint for pop-shell tiling extension

# Defining sed arguments
SEDARG_1=-i

echo "####################################################################################"
echo "============ Changing pop-shell active hint color ============"
POPSHELLFILE="/usr/share/gnome-shell/extensions/pop-shell@system76.com/dark.css"

sudo sed $SEDARG_1 's/251, 184, 108/249, 112, 107/' $POPSHELLFILE
