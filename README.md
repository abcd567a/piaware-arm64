# piaware-arm64
### Installation of dump1090-fa and piaware 3.8.1 on Ubuntu 20 arm64 / RPi 4 (using Pre-built packages)
</br>

## (1) DUMP1090-FA
Copy-paste following command in SSH console and press Enter key. The script will install dump1090-fa. </br></br>
`sudo bash -c "$(wget -O - https://raw.githubusercontent.com/abcd567a/piaware-arm64/master/install-dump1090-fa.sh)" `</br></br>

**IMPORTANT: Please reboot Pi after installing the dump1090-fa.** </br></br>


## (2) PIAWARE 

Copy-paste following command in SSH console and press Enter key. The script will install piaware. </br></br>
`sudo bash -c "$(wget -O - https://raw.githubusercontent.com/abcd567a/piaware-arm64/master/install-piaware.sh)" `</br></br>

**PIAWARE ALTERNATE SCRIPT (EXPERIMENTAL)** </br>
The script below installs bare minimum dependency packages, and is therefore faster and lighter. </br>
In case of problem or failure, run the above regular bash script </br></br>
Copy-paste following command in SSH console and press Enter key. The script will install piaware. </br></br>
`sudo bash -c "$(wget -O - https://raw.githubusercontent.com/abcd567a/piaware-arm64/master/lite-install-piaware.sh)" `</br></br>

