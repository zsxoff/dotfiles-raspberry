#!/bin/bash

sudo pacman -S --needed --noconfirm ntp

sudo unlink /etc/localtime
sudo ln -s /usr/share/zoneinfo/Europe/Samara /etc/localtime

sudo timedatectl set-local-rtc 0
sudo timedatectl set-ntp true
sudo ntpdate -s 2.ru.pool.ntp.org

sudo systemctl enable systemd-timesyncd.service
sudo systemctl start systemd-timesyncd.service