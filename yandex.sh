#!/bin/bash

wget -q -O - https://repo.yandex.ru/yandex-browser/YANDEX-BROWSER-KEY.GPG | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] http://repo.yandex.ru/yandex-browser/deb beta main" > /etc/apt/sources.list.d/yandex-browser-beta.list'

sudo apt update

sudo apt install yandex-browser-beta
