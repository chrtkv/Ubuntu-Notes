#!/bin/bash

# install telegram messenger

sudo add-apt-repository ppa:atareao/telegram -y
sudo apt update
sudo apt install telegram

# installing yandex.browser
wget -q -O - https://repo.yandex.ru/yandex-browser/YANDEX-BROWSER-KEY.GPG | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] http://repo.yandex.ru/yandex-browser/deb beta main" > /etc/apt/sources.list.d/yandex-browser-beta.list'

sudo apt update

sudo apt install yandex-browser-beta

# installing yandex.disk
echo "deb http://repo.yandex.ru/yandex-disk/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/yandex.list > /dev/null && wget http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG -O- | sudo apt-key add - && sudo apt-get update && sudo apt-get install -y yandex-disk

# installing vs code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code # or code-insiders

#install utils

sudo apt install ncdu
sudo apt install vim
sudo apt install curl
sudo apt install mc
sudo apt install openvpn

#setting up default gnome shell

sudo apt install gnome-session
sudo apt install ubuntu-gnome-default-settings
sudo apt install ubuntu-gnome-desktop
sudo apt install chrome-gnome-shell
sudo apt install gnome-tweak-tool

# install gnome-shell-extension-installer

wget -O gnome-shell-extension-installer "https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer"
chmod +x gnome-shell-extension-installer
mv gnome-shell-extension-installer /usr/bin/

# install gnome-extensions

gnome-shell-extension-installer 517 --yes #caffeine
gnome-shell-extension-installer 15 --yes #alternatetab

# end

echo "All done. Restart computer now?"
select yn in "Yes" "No"; do
	case $yn in
		Yes ) sudo reboot;;
		No ) exit;;
	esac
done

