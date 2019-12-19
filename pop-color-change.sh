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
SEDARG=-i

# Changing hex colors in various files using sed


# First GTK
# light/gtk-2.0
echo "####################################################################################"
echo "============ Modifying light/gtk-2.0 ============"
echo
GTKDESTDIR_11="gtk-theme/gtk/src/light/gtk-2.0/"

echo "------------ Modifying light/gtk-2.0/gtkrc ------------"
GTKFILE_11="gtkrc"

sudo sed $SEDARG -e 's/63B1BC/BC6464/gI' -e 's/8b8e8f/8E8A8A/gI' -e 's/574f4a/564949/gI' -e 's/00496D/6D0700/gI' -e 's/979a9b/9B9797/gI' -e 's/636769/686262/gI' $GTKDESTDIR_11$GTKFILE_11

echo "------------ Modifying light/gtk-2.0/assets.svg ------------"
GTKFILE_12="assets.svg"

sudo sed $SEDARG -e 's/7b8896/967b7b/gI' -e 's/98a2ac/aa9696/gI' -e 's/ffad00/ff2e00/gI' -e 's/63B1BC/bc6464/gI' $GTKDESTDIR_11$GTKFILE_12

echo "------------ Modifying light/gtk-2.0/assets-external.svg ------------"
GTKFILE_13="assets-external.svg"

sudo sed $SEDARG -e 's/F9D386/f99a86/gI' -e 's/ffad00/ff2e00/gI' $GTKDESTDIR_11$GTKFILE_13

# light/gtk-3.20
echo "####################################################################################"
echo "============ Modifying light/gtk-3.20 ============"
echo
GTKDESTDIR_21="gtk-theme/gtk/src/light/gtk-3.20/"

echo "------------ Modifying light/gtk-3.20/_pop_os-colors.scss ------------"
GTKFILE_21="_pop_os-colors.scss"

sudo sed $SEDARG -e 's/FFAD00/FF0000/gI' -e 's/FBB86C/F96B6B/gI' -e 's/AF5C02/AF0101/gI' -e 's/FFD7A1/FFA0A0/gI' -e 's/63B1BC/BC6464/gI' -e 's/6ACAD8/D86A6A/gI' -e 's/00496D/6D0000/gI' -e 's/94EBEB/EA9393/gI' -e 's/ADA29E/AD9D9D/gI' -e 's/9B8E8A/9B8A8A/gI' -e 's/574F4A/564949/gI' -e 's/474341/474141/gI' -e 's/403C3A/3F3A3A/gI' -e 's/393634/383333/gI' -e 's/33302F/332E2E/gI' -e 's/2B2928/2B2828/gI' $GTKDESTDIR_21$GTKFILE_21

echo "------------ Modifying light/gtk-3.20/_ubuntu-colors.scss ------------"
GTKFILE_22="_ubuntu-colors.scss"

sudo sed $SEDARG -e 's/FFAD00/FF0000/gI' -e 's/FBB86C/F96B6B/gI' -e 's/63B1BC/BC6464/gI' -e 's/6ACAD8/D86A6A/gI' -e 's/574F4A/564949/gI' $GTKDESTDIR_21$GTKFILE_22

echo "------------ Modifying light/gtk-3.20/_colors.scss ------------"
GTKFILE_23="_colors.scss"

sudo sed $SEDARG -e 's/63B1BC/BC6464/gI' -e 's/94EBEB/EA9393/gI' -e 's/574F4A/564949/gI' -e 's/6ACAD8/D86A6A/gI' -e 's/FFAD00/FF0000/gI' -e 's/FBB86C/F96B6B/gI' $GTKDESTDIR_21$GTKFILE_23

echo "------------ Modifying light/gtk-3.20/assets.svg ------------"
GTKFILE_24="assets.svg"

sudo sed $SEDARG -e 's/63B1BC/bc6464/gI' -e 's/6ACAD8/d86a6a/gI' $GTKDESTDIR_21$GTKFILE_24

echo "------------ Modifying light/gtk-3.20/granite/_pallete.scss ------------"
GTKFILE_25="granite/_palette.scss"

sudo sed $SEDARG -e 's/ffc27d/ff8c82/gI' -e 's/ffa154/ed5353/gI' -e 's/f37329/c6262e/gI' -e 's/cc3b02/a10705/gI' -e 's/a62100/7a0000/gI' -e 's/8cd5ff/ff8c8c/gI' -e 's/64baff/ff6363/gI' -e 's/3689e6/e53434/gI' -e 's/0d52bf/bf100d/gI' -e 's/002e99/990c00/gI' -e 's/95a3ab/aa9594/gI' -e 's/667885/846766/gI' -e 's/485a6c/6b4747/gI' -e 's/273445/442727/gI' -e 's/0e141f/1e0d0d/gI' $GTKDESTDIR_21$GTKFILE_25

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

sudo sed $SEDARG -e 's/6ACAD8/FF6A6A/gI' -e 's/94EBEB/EA939B/gI' $GTKDESTDIR_31$GTKFILE_31

echo "------------ Modifying dark/gtk-2.0/assets.svg ------------"
GTKFILE_32="assets.svg"

sudo sed $SEDARG -e 's/FBB86C/F9706b/gI' -e 's/63B1BC/bc6464/gI' -e 's/6ACAD8/d86a6a/gI' $GTKDESTDIR_31$GTKFILE_32

echo "------------ Modifying dark/gtk-2.0/assets-external.svg ------------"
GTKFILE_33="assets-external.svg"

sudo sed $SEDARG -e 's/F9D386/f99a86/gI' -e 's/6ACAD8/d86a6a/gI' -e 's/FBB86C/F9706b/gI' $GTKDESTDIR_31$GTKFILE_33


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

echo "------------ Modifying gnome-shell-sass/_common.scss ------------"
SHELLFILE_11="_common.scss"

sudo sed $SEDARG -e 's/Fira Sans/Play, Fira Sans/gI' $SHELLDESTDIR_11$SHELLFILE_11

echo "------------ Modifying gnome-shell-sass/_colors.scss ------------"
SHELLFILE_12="_colors.scss"

sudo sed $SEDARG -e 's/33302F/33302F/gI' -e 's/63B1BC/BC6464/gI' -e 's/94EBEB/EA9393/gI' -e 's/FFAD00/FF0800/gI' -e 's/FBB86C/F96B6B/gI' $SHELLDESTDIR_11$SHELLFILE_12

echo "------------ Modifying gnome-shell-sass/_pop_os_colors.scss ------------"
SHELLFILE_13="_pop_os_colors.scss"

sudo sed $SEDARG -e 's/FFAD00/FF0004/gI' -e 's/FBB86C/FA6D6B/gI' -e 's/AF5C02/AF0401/gI' -e 's/FFD7A1/FFA6A0/gI' -e 's/63B1BC/FF4646/gI' -e 's/6ACAD8/FF7878/gI' -e 's/ADA29E/575757/gI' -e 's/9B8EAE/9B9B9B/gI' -e 's/574F4A/575757/gI' -e 's/474341/464646/gI' -e 's/403C3A/3C3C3C/gI' -e 's/393634/373737/gI' -e 's/33302F/333333/gI' -e 's/2B2928/2B2B2B/gI' -e 's/36322f/353535/gI' $SHELLDESTDIR_11$SHELLFILE_13

echo "------------ Modifying gnome-shell-sass/_ubuntu-colors.scss ------------"
SHELLFILE_14="_ubuntu-colors.scss"

sudo sed $SEDARG -e 's/E95420/E82020/gI' -e 's/19B6EE/E54949/gI' $SHELLDESTDIR_11$SHELLFILE_14


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


sudo sed $SEDARG -e 's/454c4c/4c4545/gI' -e 's/393f3f/3f3939/gI' -e 's/2d3232/332d2d/gI' -e 's/ffad00/ff2e00/gI' $SHELLDESTDIR_21$SHELLFILE_22

sudo sed $SEDARG -e 's/454c4c/4c4545/gI' -e 's/393f3f/3f3939/gI' -e 's/2d3232/332d2d/gI' -e 's/fbb86c/f9706b/gI' $SHELLDESTDIR_21$SHELLFILE_23

sudo sed $SEDARG -e 's/454c4c/4c4545/gI' -e 's/393f3f/3f3939/gI' -e 's/2d3232/332d2d/gI' -e 's/ffad00/ff2e00/gI' $SHELLDESTDIR_21$SHELLFILE_24

sudo sed $SEDARG -e 's/454c4c/4c4545/gI' -e 's/393f3f/3f3939/gI' -e 's/2d3232/332d2d/gI' -e 's/fbb86c/f9706b/gI' $SHELLDESTDIR_21$SHELLFILE_25

sudo sed $SEDARG -e 's/454c4c/4c4545/gI' -e 's/393f3f/3f3939/gI' -e 's/2d3232/332d2d/gI' -e 's/ffad00/ff2e00/gI' $SHELLDESTDIR_21$SHELLFILE_26

sudo sed $SEDARG -e 's/454c4c/4c4545/gI' -e 's/393f3f/3f3939/gI' -e 's/2d3232/332d2d/gI' -e 's/fbb86c/f9706b/gI' $SHELLDESTDIR_21$SHELLFILE_27

sudo sed $SEDARG -e 's/454c4c/4c4545/gI' -e 's/393f3f/3f3939/gI' -e 's/2d3232/332d2d/gI' -e 's/fbb86c/f9706b/gI' $SHELLDESTDIR_21$SHELLFILE_28



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
sudo rm -r gtk-theme

