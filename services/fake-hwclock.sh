#!/bin/bash

yay -S --aur --noconfirm fake-hwclock-git

sudo systemctl enable fake-hwclock.service
sudo systemctl start fake-hwclock.service
