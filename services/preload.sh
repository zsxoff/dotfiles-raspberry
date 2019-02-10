#!/bin/bash

yay -S --aur --noconfirm preload

sudo systemctl enable preload.service
sudo systemctl start preload.service
