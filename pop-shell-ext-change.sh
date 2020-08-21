#!/bin/bash

# This script changes active color hint for pop-shell tiling extension

# Defining sed arguments
SEDARG_1=-i
SEDARG_2=-f

# For dark red one, change grey to red in file name
SEDCOLORSCHEME="Dark_grey_shell.sed"

# Changing hex colors in various files using sed

echo "####################################################################################"
echo "============ Changing pop-shell active hint color ============"
echo
echo "============ Modifying dark.css ============"
echo
POPSHELLFILE_1="/usr/share/gnome-shell/extensions/pop-shell@system76.com/dark.css"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $POPSHELLFILE_1

echo "============ Modifying light.css ============"
echo
POPSHELLFILE_2="/usr/share/gnome-shell/extensions/pop-shell@system76.com/light.css"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $POPSHELLFILE_2

