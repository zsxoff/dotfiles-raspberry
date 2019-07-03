#!/bin/bash

sudo pacman -S --needed --noconfirm cronie
sudo systemctl enable cronie.service
sudo systemctl start cronie.service