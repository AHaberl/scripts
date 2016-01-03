#!/bin/bash

echo "########################################"
echo "##                                    ##"
echo "##  Initialization for Jarvis Device  ##"
echo "##                                    ##"
echo "########################################"

echo
echo

echo "- Step 1 : update packages"
echo "----------------------------------------" 
echo
echo

#sudo apt-get update
#sudo apt-get upgrade -y


echo "- Step 2 : install minimal packages"
echo "----------------------------------------" 
echo
echo
echo "           - git"
echo 
echo
#sudo apt-get install git -y

echo "           - java"
echo
echo
#sudo apt-get install openjdk-8-jdk -y


echo "- Step 3 : install IDE/editor"
echo "----------------------------------------" 
echo
echo
echo "           - sublime"
echo
echo
#sudo add-apt-repository ppa:webupd8team/sublime-text-3
#sudo apt-get update
#sudo apt-get install sublime-text-installer


echo "           - eclipse"
echo
echo
mkdir temp -p
cd temp
wget "http://mirror.ibcp.fr/pub/eclipse//technology/epp/downloads/release/mars/1/eclipse-committers-mars-1-linux-gtk-x86_64.tar.gz" -O eclipse.tar.gz
tar xvf eclipse.tar.gz 
sudo mv eclipse /opt
cd ..
rm temp -R -f

echo "[Desktop Entry]
Name=Eclipse 
Type=Application
Exec=/opt/eclipse/eclipse
Terminal=false
Icon=/opt/eclipse/icon.xpm
Comment=Integrated Development Environment
NoDisplay=false
Categories=Development;IDE
Name[en]=Eclipse" >> ~/.local/share/applications/eclipse.desktop


