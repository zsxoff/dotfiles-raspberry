#!/bin/bash

kernel=(
    "wd719x-firmware"
    "linux-aarch64-raspberrypi-bin"
)

yay -S --aur ${kernel[@]}
