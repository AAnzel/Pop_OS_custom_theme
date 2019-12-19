# BASH SCRIPT FOR MODIFYING OFFICIAL POP-OS GTK/GNOME SHELL THEME

## Author:
* Aleksandar Anžel

### About:
* This script changes orange and blue/teal accent colours with red accent colour. This is done both for GTK and SHELL Pop-OS theme (light and dark variant).
* Also, script makes Play font a default font for Gnome Shell. Therefore, you should download and install Play font before running. Play font download link: https://fonts.google.com/specimen/Play?selection.family=Play .

### Running:
* sudo sh pop-color-change.sh
* Wait for script to finish executing (~1.5 min)

### Dependencies (apt package manager):
* sudo apt install sassc meson libglib2.0-dev inkscape optipng

### Additional info:
* Some colour changes are documented, while some are not. Bellow are changes I remembered to document. Feel free to complete this list with colour modifications present in pop-color-change.sh.


* gtk-theme/gnome-shell/src/ :

	* checkbox.svg: ffad00 -> ff2e00

	* checkbox-dark.svg: fbb86c -> f9706b

	* checkbox-focused.svg = checkbox.svg

	* checkbox-focused-dark.svg = checkbox-dark.svg

	* toggle-on.svg = checkbox.svg

	* toggle-on-dark.svg = checkbox-dark.svg

	* toggle-on-intl.svg = checkbox-dark.svg


* gtk-theme/gtk/src/light/gtk-2.0/assets.svg :

1. 7b8896 -> 967b7b
2. 98a2ac -> aa9696
3. ffad00 -> ff2e00
4. 63B1BC -> bc6464

* gtk-theme/gtk/src/light/gtk-2.0/assets-external.svg :

1. F9D386 -> f99a86
2. ffad00 -> ff2e00

* gtk-theme/gtk/src/light/gtk-3.20/assets.svg :

1. 63B1BC -> bc6464
2. 6ACAD8 -> d86a6a

* gtk-theme/gtk/src/dark/gtk-2.0/assets.svg :

1. FBB86C -> F9706b
2. 63B1BC -> bc6464
3. 6ACAD8 -> d86a6a

* gtk-theme/gtk/src/dark/gtk-2.0/assets-external.svg :

1. F9D386 -> f99a86
2. 6ACAD8 -> d86a6a
3. FBB86C -> F9706b


### Screenshots (dark variant):

![Control Center](Screenshots/Control_center.png)

![File Manager](Screenshots/File_manager.png)

![Calendar](Screenshots/Calendar.png)

![Top Panel](Screenshots/Top_panel.png)

