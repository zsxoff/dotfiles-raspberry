#!/bin/bash

cd /tmp
git clone https://aur.archlinux.org/fake-hwclock-git.git
cd fake-hwclock-git

makepkg -si --noconfirm

sudo systemctl enable fake-hwclock.service
sudo systemctl start fake-hwclock.service