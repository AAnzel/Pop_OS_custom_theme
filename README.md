# Bash script for modifying official Pop!\_OS GTK/GNOME Shell theme

## Author:
* Aleksandar Anžel

### About:
* This script was recently modified to support Pop!\_OS 20.04 (GNOME 3.36)
* The script changes orange and blue/teal accent colors with red accent color. This is done both for GTK and SHELL Pop!\_OS theme (light and dark variant).
* Also, script makes Play font a default font for the GNOME Shell. Therefore, you should download and install Play font before executing script. Play font download link: https://fonts.google.com/specimen/Play?selection.family=Play .

### Running:
```shell
sudo sh pop-color-change.sh
```
* Wait for script to finish executing (~1.5 min)

### Dependencies (apt package manager):
```shell
sudo apt install sassc meson libglib2.0-dev inkscape optipng
```

### Additional info:
* Color changes are all documented in [Dark_red_shell.sed](Dark_red_shell.sed) and [Dark_grey_shell.sed](Dark_grey_shell.sed). First document changes the native dark orange color with dark red color. Second document changes the native dark orange color with neutral grey color.

If you wish to modify the original Pop!\_OS theme with this script but with other accent color, you should change only [Dark_grey_shell.sed](Dark_grey_shell.sed) file.

### Screenshots (dark variant, dark red color scheme):

![Control Center](Screenshots/Control_center.png)

![File Manager](Screenshots/File_manager.png)

![Calendar](Screenshots/Calendar.png)

![Top Panel](Screenshots/Top_panel.png)

