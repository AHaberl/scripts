#!/bin/bash


function update_packages() {
	sudo apt-get update
	sudo apt-get upgrade -y
}


function install_git() {
	sudo apt-get install git -y
}


function install_java() {
	sudo apt-get install openjdk-8-jdk -y
}


function install_sublime() {
	sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
	sudo apt-get update
	sudo apt-get install sublime-text-installer -y
}


function install_eclipse() {
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
}


function install_chromium() {
	sudo apt-get install chromium-browser -y
}


function install_xampp() {
	wget "https://www.apachefriends.org/xampp-files/5.5.30/xampp-linux-x64-5.5.30-6-installer.run" -O xampp.run
	chmod 755 xampp.run
	sudo ./xampp.run
	mkdir -p ~/Development/php
	sudo ln -s ~/Development/php /opt/lampp/htdocs/$USER
}


function make_dev_folder() {
	mkdir ~/Development
}

function init_jarvis() {
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
	update_packages


	echo "- Step 2 : install minimal packages"
	echo "----------------------------------------" 
	echo
	echo
	echo "           - git"
	echo 
	echo
	install_git


	echo "           - java"
	echo
	echo
	install_java


	echo "- Step 3 : install IDE/editor"
	echo "----------------------------------------" 
	echo
	echo
	echo "           - sublime"
	echo
	echo
	install_sublime


	echo "           - eclipse"
	echo
	echo
	install_eclipse


	echo "- Step 3 : install additional software"
	echo "----------------------------------------" 
	echo
	echo
	echo "           - chromium"
	echo
	echo
	install_chromium

}

