#!/bin/bash

sudo sleep 0.1

#create temporary dir
mkdir ~/tmp
cd tmp

#clone old repo
git clone https://github.com/andreaceresoli17142/manjaroConfigs ./

rm .gitignore
#add new files and overwrite previus files in .config
cp -r ~/.config/* ~/tmp
#overwrite bashrc
cp -r ~/.bashrc ~/tmp

#get user installed packages and put them in pkgs.txt
pacman -Qet | awk '{print $1}' > pkgs.txt

# old way of setting bg
#get wallpaper
#cp -r -/Pictures/wallpapers/bg.png

#push changes to remote repo
git add .
git commit -m "automated commit"
git push origin master

#remove temp dir
sudo rm -r ~/tmp
