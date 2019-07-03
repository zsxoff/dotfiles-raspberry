#!/bin/bash

sudo pacman -S --needed --noconfirm git

cd /tmp; git clone https://aur.archlinux.org/yay.git; cd yay
makepkg -si --noconfirm