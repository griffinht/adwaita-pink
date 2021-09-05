#!/bin/bash
set -e

# must be run in current working directory

# https://askubuntu.com/a/1170167
sudo apt-get -y install sassc
./parse-sass.sh
sudo mkdir -p /usr/share/themes/AdwaitaPink/gtk-3.0/
sudo ln -s $(pwd)/gtk-contained.css /usr/share/themes/AdwaitaPink/gtk-3.0/gtk.css
sudo ln -s $(pwd)/assets /usr/share/themes/AdwaitaPink/gtk-3.0/assets
