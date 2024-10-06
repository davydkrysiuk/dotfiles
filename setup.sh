# Fonts
sudo apt install -y fonts-firacode;
# Terminal
sudo apt install -y kitty;

# Editor/s
sudo apt install -y emacs;
emacs -Q -batch -eval "(progn (require 'package) (package-initialize) (package-refresh-contents) (package-upgrade 'org))";

# Wget
sudo apt install -y wget;

# Chrome
if ! dpkg -l | grep -q google-chrome; then
    rm google-chrome-stable_current_amd64.deb;
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
    mv google-chrome-stable_current_amd64.deb $HOME;
    sudo apt install -y $HOME/google-chrome-stable_current_amd64.deb;
    rm $HOME/google-chrome-stable_current_amd64.deb;
fi

# Git
sudo apt install -y git;
git config --global credential.helper store;

# Debloat
sudo apt purge -y mlterm* firefox-esr* software-properties-gtk*;
DESKTOP_ENV=$(echo $XDG_CURRENT_DESKTOP)
case "$XDG_CURRENT_DESKTOP" in
	"GNOME")
		sudo apt purge -y gnome-contacts* gnome-maps* gnome-calendar* gnome-connections* gnome-weather* gnome-calculator* gnome-text-editor* gnome-terminal*;
		sudo apt purge -y simple-scan* rhythmbox* yelp*;
		sudo apt purge -y libreoffice-core*;
		;;
	"KDE")
		sudo apt purge -y khelpcenter* kate* kfind* kwalletmanager* imagemagick* konsole* plasma-discover*;
		sudo apt purge -y libreoffice-core*;
		;;
esac	
rm -rf $HOME/.mlterm;
rm -rf $HOME/.mozilla

# Folders
mkdir $HOME/Programming;

# Aliases
if ! grep -q "alias sl=" ~/.bashrc; then
    echo "alias sl='ls'" >> ~/.bashrc
    echo "Alias 'sl' added to ~/.bashrc"
else
    echo "Alias 'sl' already exists in ~/.bashrc"
fi

# LaTeX
sudo apt install -y texlive-base;
