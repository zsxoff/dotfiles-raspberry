#!/bin/bash

yay -S --repo --noconfirm networkmanager

sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service
