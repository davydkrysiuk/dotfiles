#!/bin/bash
sudo dnf remove -y gnome-tour gnome-contacts gnome-maps gnome-calendar gnome-connections gnome-weather gnome-calculator gnome-text-editor simple-scan rhythmbox yelp;
sudo dnf remove -y libreoffice-core;
sudo dnf remove -y firefox;
rm -rf $HOME/.mozilla;
