#!/bin/bash

echo -e "\e[32mCreating folder piaware-pkg to hold packages \e[39m"
sudo mkdir ${PWD}/piaware-pkg
echo "Downloading piaware packages from Github"
sudo wget -O ${PWD}/piaware-pkg/tcl-tls_1.7.16-1+fa1_arm64.deb "https://github.com/abcd567a/piaware-arm64/releases/download/ubuntu-arm64/tcl-tls_1.7.16-1+fa1_arm64.deb"
sudo wget -O ${PWD}/piaware-pkg/piaware_3.8.1.ubuntu1804+1_arm64.deb "https://github.com/abcd567a/piaware-arm64/releases/download/ubuntu-arm64/piaware_3.8.1.ubuntu1804+1_arm64.deb"

echo -e "\e[32mInstalling piaware \e[39m"
cd ${PWD}/piaware-pkg
sudo apt install libssl-dev tcl-dev chrpath   
sudo dpkg -i tcl-tls_1.7.16-1+fa1_arm64.deb  

sudo apt install tcl8.6-dev python3-dev libz-dev    
sudo apt install libboost-system-dev libboost-program-options-dev   
sudo apt install libboost-regex-dev libboost-filesystem-dev   
sudo apt install net-tools tclx8.4 tcllib itcl3   

sudo dpkg -i piaware_3.8.1.ubuntu1804+1_arm64.deb

echo -e "\e[32mPIAWARE INSTALLATION COMPLETED \e[39m"
echo -e "\e[33mPre-built packages are available in folder " ${PWD}/piaware-pkg " \e[39m"
echo ""
echo -e "\e[33mIf you already have  feeder-id, please configure piaware with it \e[39m"
echo -e "\e[33mIf you dont already have a feeder-id, please go to Flightaware Claim page  \e[39m"
