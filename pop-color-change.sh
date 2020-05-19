#!/bin/bash

# Shell script for customizing Pop-OS GTK and Shell theme. Theme modifies original Pop-OS theme changing orange and teal accent colors with red color.

# Removing last gtk-theme
echo "####################################################################################"
echo "============ Removing gtk-theme directory (if existent) ============"
echo
sudo rm -r gtk-theme

# Downloading the latest Pop-OS theme from git.
echo "####################################################################################"
echo "============ Cloning latest pop-os gtk-theme source directory ============"
echo
git clone https://github.com/pop-os/gtk-theme.git

# Defining sed arguments
SEDARG_1=-i
SEDARG_2=-f

# For dark red one, change grey to red in file name
SEDCOLORSCHEME="Dark_grey_shell.sed"

# Changing hex colors in various files using sed


# First GTK
# light/gtk-2.0
echo "####################################################################################"
echo "============ Modifying light/gtk-2.0 ============"
echo
GTKDESTDIR_11="gtk-theme/gtk/src/light/gtk-2.0/"

echo "------------ Modifying light/gtk-2.0/gtkrc ------------"
GTKFILE_11="gtkrc"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_11$GTKFILE_11

echo "------------ Modifying light/gtk-2.0/assets.svg ------------"
GTKFILE_12="assets.svg"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_11$GTKFILE_12

echo "------------ Modifying light/gtk-2.0/assets-external.svg ------------"
GTKFILE_13="assets-external.svg"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_11$GTKFILE_13

# light/gtk-3.0
echo "####################################################################################"
echo "============ Modifying light/gtk-3.0 ============"
echo
GTKDESTDIR_21="gtk-theme/gtk/src/light/gtk-3.0/"

echo "------------ Modifying light/gtk-3.0/_pop_os-colors.scss ------------"
GTKFILE_21="_pop_os-colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_21$GTKFILE_21

echo "------------ Modifying light/gtk-3.0/_ubuntu-colors.scss ------------"
GTKFILE_22="_ubuntu-colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_21$GTKFILE_22

echo "------------ Modifying light/gtk-3.0/_colors.scss ------------"
GTKFILE_23="_colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_21$GTKFILE_23

echo "------------ Modifying light/gtk-3.0/assets.svg ------------"
GTKFILE_24="assets.svg"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_21$GTKFILE_24

echo "------------ Modifying light/gtk-3.0/granite/_pallete.scss ------------"
GTKFILE_25="granite/_palette.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_21$GTKFILE_25

# Preparing assets rendering for this folder
#echo "####################################################################################"
#echo "============ Preparing assets rendering for light/gtk-3.0 ============"
#echo
#GTKFILE_26="assets/*"
#GTKFILE_27="bullet-symbolic.svg"
#GTKFILE_28="check-symbolic.svg"
#GTKFILE_29="dash-symbolic.svg"
#GTKFILE_30="assets/"

#echo "------------ Removing existing assets from light/gtk-3.0/assets/ ------------"
#rm $GTKDESTDIR_21$GTKFILE_26

#echo "------------ Copying *-symbolic.svg to light/gtk-3.0/assets/ ------------"
#cp $GTKDESTDIR_21$GTKFILE_27 $GTKDESTDIR_21$GTKFILE_30
#cp $GTKDESTDIR_21$GTKFILE_28 $GTKDESTDIR_21$GTKFILE_30
#cp $GTKDESTDIR_21$GTKFILE_29 $GTKDESTDIR_21$GTKFILE_30

# light/gtk-3.20
echo "####################################################################################"
echo "============ Modifying light/gtk-3.20 ============"
echo
GTKDESTDIR_21="gtk-theme/gtk/src/light/gtk-3.20/"

echo "------------ Modifying light/gtk-3.20/_pop_os-colors.scss ------------"
GTKFILE_21="_pop_os-colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_21$GTKFILE_21

echo "------------ Modifying light/gtk-3.20/_ubuntu-colors.scss ------------"
GTKFILE_22="_ubuntu-colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_21$GTKFILE_22

echo "------------ Modifying light/gtk-3.20/_colors.scss ------------"
GTKFILE_23="_colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_21$GTKFILE_23

echo "------------ Modifying light/gtk-3.20/assets.svg ------------"
GTKFILE_24="assets.svg"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_21$GTKFILE_24

echo "------------ Modifying light/gtk-3.20/granite/_pallete.scss ------------"
GTKFILE_25="granite/_palette.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_21$GTKFILE_25

# Preparing assets rendering for this folder
echo "####################################################################################"
echo "============ Preparing assets rendering for light/gtk-3.20 ============"
echo
GTKFILE_26="assets/*"
GTKFILE_27="bullet-symbolic.svg"
GTKFILE_28="check-symbolic.svg"
GTKFILE_29="dash-symbolic.svg"
GTKFILE_30="assets/"

echo "------------ Removing existing assets from light/gtk-3.20/assets/ ------------"
rm $GTKDESTDIR_21$GTKFILE_26

echo "------------ Copying *-symbolic.svg to light/gtk-3.20/assets/ ------------"
cp $GTKDESTDIR_21$GTKFILE_27 $GTKDESTDIR_21$GTKFILE_30
cp $GTKDESTDIR_21$GTKFILE_28 $GTKDESTDIR_21$GTKFILE_30
cp $GTKDESTDIR_21$GTKFILE_29 $GTKDESTDIR_21$GTKFILE_30


# dark/gtk-2.0
echo "####################################################################################"
echo "============ Modifying dark/gtk-2.0 ============"
echo
GTKDESTDIR_31="gtk-theme/gtk/src/dark/gtk-2.0/"

echo "------------ Modifying dark/gtk-2.0/gtkrc ------------"
GTKFILE_31="gtkrc"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_31$GTKFILE_31

echo "------------ Modifying dark/gtk-2.0/assets.svg ------------"
GTKFILE_32="assets.svg"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_31$GTKFILE_32

echo "------------ Modifying dark/gtk-2.0/assets-external.svg ------------"
GTKFILE_33="assets-external.svg"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_31$GTKFILE_33


# UPSTREAM THEMEING _new_
echo "####################################################################################"
echo "============ Modifying upstream/gtk+3.0 ============"
echo
GTKDESTDIR_41="gtk-theme/gtk/upstream/gtk+3.0/Adwaita/"

echo "------------ Modifying gtkrc ------------"
GTKFILE_41="gtkrc"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_41$GTKFILE_41

echo "------------ Modifying assets.svg ------------"
GTKFILE_42="assets.svg"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_41$GTKFILE_42

echo "------------ Modifying _colors-public.scss ------------"
GTKFILE_43="_colors-public.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_41$GTKFILE_43

echo "------------ Modifying _colors.scss ------------"
GTKFILE_44="_colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_41$GTKFILE_44

# Initiate assets rendering for all above folders with moving to directory
echo "####################################################################################"
echo "============ Rendering assets ============"
echo

GTKFILE_41="render-all-assets.sh"
GTKFILE_42="render-assets-external.sh"
GTKFILE_43="render-assets.sh"

echo "------------ Rendering assets in light/gtk-2.0/ ------------"
# light/gtk-2.0
cd $GTKDESTDIR_11
sudo sh $GTKFILE_41
sudo sh $GTKFILE_42
cd ../../../../../

echo "------------ Rendering assets in light/gtk-3.20/ ------------"
# light/gtk-3.20
cd $GTKDESTDIR_21
sudo sh $GTKFILE_43
cd ../../../../../

echo "------------ Rendering assets in dark/gtk-2.0/ ------------"
# dark/gtk-2.0
cd $GTKDESTDIR_31
sudo sh $GTKFILE_41
sudo sh $GTKFILE_42
cd ../../../../../


# Changing gnome-shell theming
echo "####################################################################################"
echo "============ Theming gnome-shell ============"
echo
SHELLDESTDIR_11="gtk-theme/gnome-shell/src/gnome-shell-sass/"


echo "------------ Modifying gnome-shell-sass/_colors.scss ------------"
SHELLFILE_12="_colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_11$SHELLFILE_12

echo "------------ Modifying gnome-shell-sass/_pop_os_colors.scss ------------"
SHELLFILE_13="_pop_os_colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_11$SHELLFILE_13

echo "------------ Modifying gnome-shell-sass/_ubuntu-colors.scss ------------"
SHELLFILE_14="_ubuntu-colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_11$SHELLFILE_14

echo "------------ Modifying gnome-shell-sass/_high-contrast-colors.scss ------------"
SHELLFILE_15="_high-contrast-colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_11$SHELLFILE_15

# Modyfing necessary pictures
echo "------------ Modifying checkbox-*.svg  and toggle-*.svg ------------"
SHELLDESTDIR_21="gtk-theme/gnome-shell/src/"

SHELLFILE_22="checkbox.svg"
SHELLFILE_23="checkbox-dark.svg"
SHELLFILE_24="checkbox-focused.svg"
SHELLFILE_25="checkbox-focused-dark.svg"
SHELLFILE_26="toggle-on.svg"
SHELLFILE_27="toggle-on-dark.svg"
SHELLFILE_28="toggle-on-intl.svg"


sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_22

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_23

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_24

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_25

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_26

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_27

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_28

### UPSTREAM VERSION _new_ ###
SHELLDESTDIR_21="gtk-theme/gnome-shell/upstream/gnome-shell-sass/"

echo "------------ Modifying gnome-shell-sass/_colors.scss ------------"
SHELLFILE_22="_colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_22

echo "------------ Modifying gnome-shell-sass/_high-contrast-colors.scss ------------"
SHELLFILE_23="_high-contrast-colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_23


# Modyfing necessary pictures
echo "------------ Modifying checkbox-*.svg  and toggle-*.svg ------------"
SHELLDESTDIR_31="gtk-theme/gnome-shell/upstream/"

SHELLFILE_32="checkbox.svg"
SHELLFILE_33="checkbox-focused.svg"
SHELLFILE_34="toggle-on.svg"
SHELLFILE_35="toggle-on-dark.svg"
SHELLFILE_36="toggle-on-intl.svg"


sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_31$SHELLFILE_32

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_31$SHELLFILE_33

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_31$SHELLFILE_34

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_31$SHELLFILE_35

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_31$SHELLFILE_36

# Building theme and installing
echo "####################################################################################"
echo "============ Theme build and install ============"
echo

cd "gtk-theme/"
sudo meson build && cd build
sudo ninja
sudo ninja install


echo "####################################################################################"
echo "============ Removing downloaded gtk-theme directory ============"
echo
cd ../../
sudo rm -r gtk-theme

