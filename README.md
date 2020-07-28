# Windows-7-Full-Theme-KDE-Plasma-only-
Here it is. A Full Windows 7 theme! (Possibly)

Tested with KDE 5.19

-----------------------------------------------------------------------------------------------------------------------------

Just copy these lines:

git clone https://github.com/linlinxza/Windows-7-Full-Theme-KDE-Plasma-only-.git

cd Windows-7-Full-Theme-KDE-Plasma-only-

chmod +x transformationsetup.sh

./transformationsetup.sh

If using KDE Neon, git will have to be manually installed under sudo like so: apt install git -y

If using any Arch based system, Grub will have to be set up manually for the 7 Plymouth theme. Adding 'splash' (without quotes) to the Grub parameters and running update-grub under sudo should be enough.

-----------------------------------------------------------------------------------------------------------------------------

It will copy everything to the specified system directories required to make this theme work.
Then it will ask whether or not to copy over your user config files in the current user profile. 
(Your current desktop settings will be overwritten!)
Type "Y" for yes. Or otherwise, the script will just skip it if any other character is entered.

Then for the splash screen, select the option for "7" as your plymouth boot screen.

Regarding the splash screen when logging in, it most likely will need to be resized if the resolution is ever changed. In the application menu, type "Win 7 Splash Fix."

All widgets are locked when installing this. (I did this for users who... tend to click everywhere.) 
This can be changed by going to the menu. Type "Unlock widgets" to unlock, and type "Lock widgets" to lock again.

So if anything goes wonky with the panel, just unlock the widgets and set the panel to your liking. This is
cause and effect of some settings not taking effect properly.

Finally, I must thank all those who created the icon themes and theming styles for me to work with! This is a tribute to their work!

Credits:

http://b00merang.weebly.com/windows-7.html

https://www.gnome-look.org/content/show.php/Win2-7+Pack?content=113264

https://store.kde.org/p/998823/

https://store.kde.org/p/1084938/

https://www.gnome-look.org/p/1000041/

https://store.kde.org/p/1002683/

https://store.kde.org/p/1002615/
