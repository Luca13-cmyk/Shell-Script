#!/bin/bash
#
# Configuração do Kali Linux

# l_. Luca Negrette ._l

#

echo -e "deb http://http.kali.org/kali kali-rolling main non-free contrib\ndeb-src http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list

apt update 

echo "Você quer instalar o openvas ? [s\n]"
read RESPOSTA
test "$RESPOSTA" == "s" && apt install openvas -y

apt dist-upgrade -y
# Instalações
apt install ufw -y && ufw enable
apt install libcanberra-gtk-module libgconf-2-4 -y
apt install speedtest-cli -y
apt install imagemagick-6.q16 -y
apt install psensor -y 
apt install bleachbit -y 
apt install gsmartcontrol -y 
apt install pwgen -y
apt install vlc -y
apt-get install ruby-curb -y
apt install exiftool -y
apt-get install ccrypt -y
apt-get install tor -y
apt install wicd-gtk -y
apt install python-pip -y
pip3 install virtualenv virtualenvwrapper
echo -e "export WORKON_HOME=/.virtualenvs\nexport VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3\nsource /usr/local/bin/virtualenvwrapper.sh" >> /root/.bashrc
apt install adb -y
apt install php-cgi -y 
apt install mdk3 mdk4 -y
apt install hostapd -y 
apt install qbittorent -y
apt install hexchat -y
apt install etherape -y
apt install logcheck -y
apt install virtualbox -y
# docker
# remove previously installed Docker
apt-get remove docker docker-engine docker.io* lxc-docker* -y
# install dependencies 4 cert
apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
# add Docker repo gpg key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" >> /etc/apt/sources.list
sudo apt-get update
# install Docker
sudo apt-get install docker-ce
# run Hellow World image
sudo docker run hello-world
# manage Docker as a non-root user
sudo groupadd docker
sudo usermod -aG docker $USER
# configure Docker to start on boot
# sudo systemctl enable docker
# ./docker
# bodgeit
docker pull psiinon/bodgeit
# docker run --rm -p 8080:8080 -i -t psiinon/bodgeit
# ./bodgeit
# ./instalações

# github
clear
touch /root/Desktop/logShell.txt
if [ -e /root/Desktop/logShell.txt ] 
then
    cd /root/Desktop/
    git clone https://github.com/Luca13-cmyk/Ferramentas-JS-CSS-PY-PHP.git
    git clone https://github.com/Luca13-cmyk/Sockess-Stress.git
    git clone https://github.com/wi-fi-analyzer/fluxion/archive/master.zip
    git clone https://github.com/v1s1t0r1sh3r3/airgeddon/archive/master.zip
    git clone https://github.com/gabamnml/hoper/archive/master.zip
    git clone https://github.com/sundowndev/PhoneInfoga/archive/master.zip
    git clone https://github.com/Zucccs/PhoneSploit.git
    git clone https://github.com/Luca13-cmyk/AutoSettingApkIcon.git
    git clone https://github.com/Luca13-cmyk/My-Page.git
    git clone https://github.com/Luca13-cmyk/Arquivos.git
    git clone https://github.com/sherlock-project/sherlock.git

else
    echo "não existe" && exit
    
fi

# ./github
##### Metasploit Framework
msfdb init
service postgresql start
##### Tor Browser
adduser --home /home/toruser toruser 
xhost si:localuser:toruser 
#sudo -u toruser -H ./start-tor-browser.desktop
#####




