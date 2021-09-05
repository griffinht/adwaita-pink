#!/bin/bash
set -e

if [ ! -z "$1" ]; then
    echo "using given working directory"
    directory="$1"
else
    echo "warning: using current working directory"
    directory=$(pwd)
fi
echo "$directory"

# https://askubuntu.com/a/1170167
sudo apt-get -y install sassc
"$directory/parse-sass.sh"
sudo mkdir -p /usr/share/themes/AdwaitaPink/gtk-3.0/
sudo ln -s "$directory/gtk-contained.css /usr/share/themes/AdwaitaPink/gtk-3.0/gtk.css"
sudo ln -s "$directory/assets /usr/share/themes/AdwaitaPink/gtk-3.0/assets"
