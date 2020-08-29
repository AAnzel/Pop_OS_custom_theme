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
echo "####################################################################################"
echo "============ Preparing assets rendering for light/gtk-3.0 ============"
echo
GTKFILE_26="assets/*"
GTKFILE_27="bullet-symbolic.svg"
GTKFILE_28="check-symbolic.svg"
GTKFILE_29="dash-symbolic.svg"
GTKFILE_30="assets/"

echo "------------ Removing existing assets from light/gtk-3.0/assets/ ------------"
sudo rm $GTKDESTDIR_21$GTKFILE_26

echo "------------ Copying *-symbolic.svg to light/gtk-3.0/assets/ ------------"
cp $GTKDESTDIR_21$GTKFILE_27 $GTKDESTDIR_21$GTKFILE_30
cp $GTKDESTDIR_21$GTKFILE_28 $GTKDESTDIR_21$GTKFILE_30
cp $GTKDESTDIR_21$GTKFILE_29 $GTKDESTDIR_21$GTKFILE_30

# light/gtk-3.20
echo "####################################################################################"
echo "============ Modifying light/gtk-3.20 ============"
echo
GTKDESTDIR_31="gtk-theme/gtk/src/light/gtk-3.20/"

echo "------------ Modifying light/gtk-3.20/_pop_os-colors.scss ------------"
GTKFILE_31="_pop_os-colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_31$GTKFILE_31

echo "------------ Modifying light/gtk-3.20/_ubuntu-colors.scss ------------"
GTKFILE_32="_ubuntu-colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_31$GTKFILE_32

echo "------------ Modifying light/gtk-3.20/_colors.scss ------------"
GTKFILE_33="_colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_31$GTKFILE_33

echo "------------ Modifying light/gtk-3.20/assets.svg ------------"
GTKFILE_34="assets.svg"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_31$GTKFILE_34

echo "------------ Modifying light/gtk-3.20/granite/_pallete.scss ------------"
GTKFILE_35="granite/_palette.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_31$GTKFILE_35

# Preparing assets rendering for this folder
echo "####################################################################################"
echo "============ Preparing assets rendering for light/gtk-3.20 ============"
echo
GTKFILE_36="assets/*"
GTKFILE_37="bullet-symbolic.svg"
GTKFILE_38="check-symbolic.svg"
GTKFILE_39="dash-symbolic.svg"
GTKFILE_40="assets/"

echo "------------ Removing existing assets from light/gtk-3.20/assets/ ------------"
sudo rm $GTKDESTDIR_31$GTKFILE_36

echo "------------ Copying *-symbolic.svg to light/gtk-3.20/assets/ ------------"
cp $GTKDESTDIR_31$GTKFILE_37 $GTKDESTDIR_31$GTKFILE_40
cp $GTKDESTDIR_31$GTKFILE_38 $GTKDESTDIR_31$GTKFILE_40
cp $GTKDESTDIR_31$GTKFILE_39 $GTKDESTDIR_31$GTKFILE_40


# dark/gtk-2.0
echo "####################################################################################"
echo "============ Modifying dark/gtk-2.0 ============"
echo
GTKDESTDIR_41="gtk-theme/gtk/src/dark/gtk-2.0/"

echo "------------ Modifying dark/gtk-2.0/gtkrc ------------"
GTKFILE_41="gtkrc"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_41$GTKFILE_41

echo "------------ Modifying dark/gtk-2.0/assets.svg ------------"
GTKFILE_42="assets.svg"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_41$GTKFILE_42

echo "------------ Modifying dark/gtk-2.0/assets-external.svg ------------"
GTKFILE_43="assets-external.svg"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_41$GTKFILE_43


# UPSTREAM THEMEING _new_
echo "####################################################################################"
echo "============ Modifying upstream/gtk+3.0 ============"
echo
GTKDESTDIR_51="gtk-theme/gtk/upstream/gtk+3.0/Adwaita/"

echo "------------ Modifying gtkrc ------------"
GTKFILE_51="gtkrc"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_51$GTKFILE_51

echo "------------ Modifying assets.svg ------------"
GTKFILE_52="assets.svg"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_51$GTKFILE_52

echo "------------ Modifying _colors-public.scss ------------"
GTKFILE_53="_colors-public.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_51$GTKFILE_53

echo "------------ Modifying _colors.scss ------------"
GTKFILE_54="_colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $GTKDESTDIR_51$GTKFILE_54

# Initiate assets rendering for all above folders with moving to directory
echo "####################################################################################"
echo "============ Rendering assets ============"
echo

GTKFILE_61="render-all-assets.sh"
GTKFILE_62="render-assets-external.sh"
GTKFILE_63="render-assets.sh"

echo "------------ Rendering assets in light/gtk-2.0/ ------------"
# light/gtk-2.0
cd $GTKDESTDIR_11
sudo sh $GTKFILE_61
sudo sh $GTKFILE_62
cd ../../../../../

echo "------------ Rendering assets in light/gtk-3.0/ ------------"
# light/gtk-3.0
cd $GTKDESTDIR_21
sudo sh $GTKFILE_63
cd ../../../../../

echo "------------ Rendering assets in light/gtk-3.20/ ------------"
# light/gtk-3.20
cd $GTKDESTDIR_31
sudo sh $GTKFILE_63
cd ../../../../../

echo "------------ Rendering assets in dark/gtk-2.0/ ------------"
# dark/gtk-2.0
cd $GTKDESTDIR_41
sudo sh $GTKFILE_61
sudo sh $GTKFILE_62
cd ../../../../../


# Changing gnome-shell theming
echo "####################################################################################"
echo "============ Theming gnome-shell ============"
echo
SHELLDESTDIR_11="gtk-theme/gnome-shell/src/gnome-shell-sass/"


echo "------------ Modifying gnome-shell-sass/_colors.scss ------------"
SHELLFILE_11="_colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_11$SHELLFILE_11

echo "------------ Modifying gnome-shell-sass/_pop_os_colors.scss ------------"
SHELLFILE_12="_pop_os_colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_11$SHELLFILE_12

echo "------------ Modifying gnome-shell-sass/_ubuntu-colors.scss ------------"
SHELLFILE_13="_ubuntu-colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_11$SHELLFILE_13

echo "------------ Modifying gnome-shell-sass/_high-contrast-colors.scss ------------"
SHELLFILE_14="_high-contrast-colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_11$SHELLFILE_14

# Modyfing necessary pictures
echo "------------ Modifying checkbox-*.svg  and toggle-*.svg ------------"
SHELLDESTDIR_21="gtk-theme/gnome-shell/src/"

SHELLFILE_21="checkbox.svg"
SHELLFILE_22="checkbox-dark.svg"
SHELLFILE_23="checkbox-focused.svg"
SHELLFILE_24="checkbox-focused-dark.svg"
SHELLFILE_25="toggle-on.svg"
SHELLFILE_26="toggle-on-dark.svg"
SHELLFILE_27="toggle-on-intl.svg"


sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_21

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_22

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_23

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_24

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_25

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_26

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_21$SHELLFILE_27

### UPSTREAM VERSION _new_ ###
SHELLDESTDIR_31="gtk-theme/gnome-shell/upstream/gnome-shell-sass/"

echo "------------ Modifying gnome-shell-sass/_colors.scss ------------"
SHELLFILE_31="_colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_31$SHELLFILE_31

echo "------------ Modifying gnome-shell-sass/_high-contrast-colors.scss ------------"
SHELLFILE_32="_high-contrast-colors.scss"

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_31$SHELLFILE_32


# Modyfing necessary pictures
echo "------------ Modifying checkbox-*.svg  and toggle-*.svg ------------"
SHELLDESTDIR_41="gtk-theme/gnome-shell/upstream/"

SHELLFILE_41="checkbox.svg"
SHELLFILE_42="checkbox-focused.svg"
SHELLFILE_43="toggle-on.svg"
SHELLFILE_44="toggle-on-dark.svg"
SHELLFILE_44="toggle-on-intl.svg"


sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_41$SHELLFILE_41

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_41$SHELLFILE_42

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_41$SHELLFILE_43

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_41$SHELLFILE_44

sudo sed $SEDARG_1 $SEDARG_2 $SEDCOLORSCHEME $SHELLDESTDIR_41$SHELLFILE_45

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

