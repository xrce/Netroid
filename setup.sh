#!/data/data/com.termux/files/usr/bin/sh

blue='\e[0;34'
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'

function banner() {
    clear
    echo -e "$blue|      __     _             _     _ "
    echo -e "$blue|   /\ \ \___| |_ _ __ ___ (_) __| |"
    echo -e "$blue|  /  \/ / _ \ __| '__/ _ \| |/ _\` |"
    echo -e "$blue| / /\  /  __/ |_| | | (_) | | (_| |"
    echo -e "$blue| \_\ \/ \___|\__|_|  \___/|_|\__,_|"
    echo -e ""
    echo -e "$white|      Nethunter On Homescreen     |"
    echo -e ""
    echo -e ""
}

function check() {
    if [ ! -d ~/kali-armhf ]; then
        echo -e "$red [!]$white Kali Rootfs not found, please install before running this script"
        exit
    elif [ ! -d ~/kali-arm64 ]; then
        echo -e "$red [!]$white Kali Rootfs not found, please install before running this script"
        exit
    else
        echo -e "$okegreen [*] Kali Rootfs found"
    fi
    if [ ! -d ~/.bin ]; then
        echo -e "$red [!]$white Netroid .bin directory not found, creating new one"
        mkdir -p ~/.bin
        echo -e "$okegreen [*]$white Netroid .bin directory created"
    else
        echo -e "$okegreen [*]$white Netroid .bin directory found"
    fi
    if [ ! -d ~/.shortcuts ]; then
        echo -e "$red [!]$white Termux .shortcuts directory not found, creating new one"
        mkdir -p ~/.shortcuts
        echo -e "$okegreen [*]$white Termux .shortcuts directory created"
    else
        echo -e "$okegreen [*]$white Termux .shortcuts directory found"
    fi
}

function install() {
    echo -e "$okegreen [*]$white Installing Netroid"
    echo -e "$okegreen [*]$white Copying Scripts"
    cp scripts/* ~/.shortcuts/
    cp bin/* ~/.bin/
    echo -e "$okegreen [*]$white Running Chmod"
    chmod +x ~/.shortcuts/*
    chmod +x ~/.bin/
    echo -e "$okegreen [*]$white Add some Aliases"
    echo "alias addsc='bash ~/.bin/addsc'" >> ~/.bashrc
    echo "alias delsc='bash ~/.bin/delsc'" >> ~/.bashrc
    echo "alias update='bash ~/.shortcuts/Update'" >> ~/.bashrc
    echo -e "$okegreen [*]$white Done"
}

banner
check
install

banner
echo -e "$okegreen [*]$white Netroid Installed Successfully"
echo -e ""
echo -e "$okegreen [*]$white To start Netroid, type :"
echo -e "$okegreen [*]$white addsc           $yellow #$white To create new Shortcut"
echo -e "$okegreen [*]$white delsc           $yellow #$white To remove Shortcut"
echo -e "$okegreen [*]$white update          $yellow #$white To update Nethunter"
echo -e ""
echo -e "$okegreen [*]$white I recommend you to use 3rd party launcher"
echo -e "$okegreen [*]$white Custom Icons available on 'Netroid Icons' folder"
echo -e "$okegreen [*]$white For now, you have to change shortcut icons by yourself"