#!/bin/bash
#
# Configuração do Kali Linux
#

# echo -e "deb http://http.kali.org/kali kali-rolling main non-free contrib\ndeb-src http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list

# apt update 

echo "Você quer instalar o openvas ? [s\n]"
read RESPOSTA
test "$RESPOSTA" == "s" && apt install openvas

# apt dist-upgrade -y

# apt install ufw && ufw enable
# apt install libcanberra-gtk-module libgconf-2-4 -y
# apt install speedtest-cli -y
# apt install imagemagick-6.q16 -y
# apt install psensor -y 
# apt install bleachbit -y 
# apt install gsmartcontrol -y 
# apt install pwgen -y
# apt install vlc -y
# apt-get install ruby-curb -y
# apt install exiftool -y
# apt-get install ccrypt -y
apt-get install tor -y
apt install wicd-gtk -y

clear
touch /root/Desktop/logShell.txt
if [ -e /root/Desktop/logShell.txt ] 
then
    cd /root/Desktop/
    git clone https://github.com/Luca13-cmyk/Python/archive/master.zip
    git clone https://github.com/Luca13-cmyk/Shell-Script/archive/master.zip
    git clone https://github.com/wi-fi-analyzer/fluxion/archive/master.zip
    git clone https://github.com/v1s1t0r1sh3r3/airgeddon/archive/master.zip
    git clone https://github.com/gabamnml/hoper/archive/master.zip
    git clone https://github.com/sundowndev/PhoneInfoga/archive/master.zip

else
    echo "não existe" && exit
    
fi
##### Metasploit Framework
msfdb init
service postgresql start
##### Tor Browser
adduser --home /home/toruser toruser 
xhost si:localuser:toruser 
#sudo -u toruser -H ./start-tor-browser.desktop
#####




