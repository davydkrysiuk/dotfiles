# Terminal
sudo apt install -y alacritty;

# Editor/s
sudo apt install -y emacs;
emacs -Q -batch -eval "(progn (require 'package) (package-initialize) (package-refresh-contents) (package-upgrade 'org))";

# Latex
sudo apt install -y texlive;

# Wget
sudo apt install -y wget;

# Chrome
if ! dpkg -l | grep -q google-chrome; then
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
	sudo apt install -y google-chrome-stable_current_amd64.deb;
	rm google-chrome-stable_current_amd64.deb;
fi

# Git
sudo apt install -y git;
git config --global credential.helper store;

# KDE
# sudo apt purge -y mlterm* khelpcenter* kate* kfind* kwalletmanager* imagemagick* konsole* plasma-discover*;
# rm -rf $HOME/.mlterm;
