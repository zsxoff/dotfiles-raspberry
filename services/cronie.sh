#!/bin/bash

yay -S --repo --noconfirm cronie
sudo systemctl enable cronie.service
sudo systemctl start cronie.service
