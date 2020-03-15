#!/bin/bash

## Copy items section

sudo echo "Copying Items"
sudo cp -rf wallpaper/* /usr/share/wallpapers/
sudo cp cursors-icons/win7startorb.png /usr/share/icons/
sudo unzip cursors-icons/Windows-7.zip -d /usr/share/icons/
sudo tar xf cursors-icons/aero.tar.gz --directory /usr/share/icons/
sudo tar xf cursors-icons/Win-8.1-NS.tar.gz --directory /usr/share/icons/
sudo tar xf cursors-icons/Win-8.1-S.tar.gz --directory /usr/share/icons/
sudo cp -rf desktopthemes/* /usr/share/plasma/desktoptheme/
sudo mkdir /usr/share/aurorae/ && sudo mkdir /usr/share/aurorae/themes/
sudo cp -rf windowthemes/* /usr/share/aurorae/themes/
sudo cp -rf gtktheme/* /usr/share/themes/
convert splashtheme/org.Win7.desktop/contents/splash/images/background-logon-default-windows-7.png -resize $(xrandr | grep \* | awk '{print $1}')! splashtheme/org.Win7.desktop/contents/splash/images/background.png
sudo cp -rf splashtheme/* /usr/share/plasma/look-and-feel/
sudo cp "Lock Widgets.desktop" /usr/share/applications/
sudo cp "Unlock Widgets.desktop" /usr/share/applications/
sudo cp "Win 7 Splash Fix.desktop" /usr/share/applications/
sudo cp -rf sevenfonts/* /usr/share/fonts/
sudo cp -rf plymouththeme/* /usr/share/plymouth/themes/
clear

## Copy user config files section

read -p "Copy presets? ALL CURRENT USER PROFILE DESKTOP SETTINGS WILL BE OVERWRITTEN! Y/N?:" USER_OPTION
if [ "$USER_OPTION" ==  'Y' ];then
        sudo echo "Copying presets"
        cp -rf presets/.kde ~/
        rm ~/.config/plasma-org.kde.plasma.desktop-appletsrc
        cp -rf presets/.config ~/
        sudo cp -rf sddmsettings/* /usr/share/sddm/themes/breeze/
        clear
    else
        echo "Skipping"
        sleep 2
        clear
fi

## Splash theme selection

sudo echo "Setting Boot splash theme"
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/7/7.plymouth 100
sudo update-alternatives --config default.plymouth
sudo update-initramfs -u
clear

## Complete section

echo "Setup complete! Enjoy!"
