sudo dnf install -y git;
git config --global credential.helper store;

sudo dnf remove -y gnome-contacts* gnome-maps* gnome-calendar* gnome-connections* gnome-weather* gnome-calculator* gnome-text-editor* gnome-terminal* gnome-tour*;
sudo dnf remove -y simple-scan* rhythmbox* yelp*;
sudo dnf remove -y libreoffice-core*;

sudo dnf install -y clang;

sudo dnf install -y emacs;

git get https://github.com/davydkrysiuk/dotfiles.git
