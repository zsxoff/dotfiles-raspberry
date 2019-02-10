#!/bin/bash

kernel=(
    "linux-aarch64-raspberrypi-bin"
    "raspberrypi-overlays"
    "wd719x-firmware"
)

yay -S --aur ${kernel[@]}
