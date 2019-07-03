#!/bin/bash

# Install git.
sudo pacman -S --needed --noconfirm git

# Remove default packages.
sudo pacman -R linux-aarch64 uboot-raspberrypi

# Install linux-aarch64-raspberrypi-bin.
cd /tmp
git clone https://aur.archlinux.org/linux-aarch64-raspberrypi-bin.git
cd linux-aarch64-raspberrypi-bin
makepkg -si --noconfirm

# Install wd719x-firmware.
cd /tmp
git clone https://aur.archlinux.org/wd719x-firmware.git
cd wd719x-firmware
makepkg -si --noconfirm