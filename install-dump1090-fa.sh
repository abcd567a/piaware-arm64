#!/bin/bash

echo -e "\e[32mCreating folder dump1090-fa-pkg to hold packages \e[39m"
sudo mkdir ${PWD}/dump1090-fa-pkg
echo -e "\e[32mDownloading librtlsdr0_0.6_arm64.deb package from Github \e[39m"
sudo wget -O ${PWD}/dump1090-fa-pkg/librtlsdr0_0.6_arm64.deb "https://github.com/abcd567a/piaware-arm64/releases/download/ubuntu-arm64/librtlsdr0_0.6_arm64.deb"
echo -e "\e[32mDownloading librtlsdr-dev_0.6_arm64.deb package from Github \e[39m"
sudo wget -O ${PWD}/dump1090-fa-pkg/librtlsdr-dev_0.6_arm64.deb "https://github.com/abcd567a/piaware-arm64/releases/download/ubuntu-arm64/librtlsdr-dev_0.6_arm64.deb"
echo -e "\e[32mDownloading dump1090-fa_3.8.1_arm64.deb package from Github \e[39m"
sudo wget -O ${PWD}/dump1090-fa-pkg/dump1090-fa_3.8.1_arm64.deb "https://github.com/abcd567a/piaware-arm64/releases/download/ubuntu-arm64/dump1090-fa_3.8.1_arm64.deb"

echo -e "\e[32mInstalling dependencies \e[39m"
cd ${PWD}/dump1090-fa-pkg
sudo apt install libncurses5-dev lighttpd libusb-1.0-0-dev
sudo dpkg -i librtlsdr0_0.6_arm64.deb
sudo dpkg -i librtlsdr-dev_0.6_arm64.deb 
echo -e "\e[32mBlocking auto-upgrade of librtlsdr0 & librtlsdr-dev \e[39m"
sudo apt-mark hold librtlsdr0 librtlsdr-dev 
echo -e "\e[32mInstalling dump1090-fa \e[39m"
sudo dpkg -i dump1090-fa_3.8.1_arm64.deb

echo -e "\e[32mDUMP1090-FA INSTALLATION COMPLETED \e[39m"
echo -e "\e[33mPre-built packages are available in folder " ${PWD} " \e[39m"
echo ""
echo -e "\e[31mREBOOT PI \e[39m"
echo -e "\e[31mREBOOT PI \e[39m"
echo -e "\e[31mREBOOT PI \e[39m"
