# Fonts
sudo apt install -y fonts-firacode;

# Editor/s
sudo apt install -y emacs;
emacs -Q -batch -eval "(progn (require 'package) (package-initialize) (package-refresh-contents) (package-upgrade 'org))";

# Wget
sudo apt install -y wget;

# Git
sudo apt install -y git;
git config --global credential.helper store;

# Debloat
DESKTOP_ENV=$(echo $XDG_CURRENT_DESKTOP)
case "$XDG_CURRENT_DESKTOP" in
	"GNOME")
		sudo apt purge -y gnome-contacts* gnome-maps* gnome-calendar* gnome-connections* gnome-weather* gnome-calculator* gnome-text-editor* libreoffice* gnome-clocks* gnome-sound-recorder* evolution* shotwell* gnome-tour* gnome-music* nautilus*;
		sudo apt purge -y simple-scan* rhythmbox* yelp*;
		sudo apt purge -y libreoffice-core*;
		;;
	"KDE")
		sudo apt purge -y khelpcenter* kate* kfind* kwalletmanager* imagemagick* konsole* plasma-discover*;
		sudo apt purge -y libreoffice-core*;
		;;
esac	
rm -rf $HOME/.mlterm;

# Finish
sudo apt autoremove -y;
