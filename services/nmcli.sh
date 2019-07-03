#!/bin/bash

sudo pacman -S --needed --noconfirm networkmanager

sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service