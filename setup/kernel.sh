#!/bin/bash

kernel=(
    "wd719x-firmware"
    "linux-aarch64-raspberrypi-bin"
    "raspberrypi-overlays"
)

yay -S --aur ${kernel[@]}
