#!/bin/bash

utils=(
    "aria2"
    "curl"
    "htop"
    "nano"
    "neofetch"
    "tmux"
    "v4l-utils"
    "vim"
    "wget"
)

archives=(
    "bzip2"
    "gzip"
    "p7zip"
    "unrar"
    "unzip"
    "xz"
)

yay -S --repo --noconfirm ${utils[@]} ${archives[@]}
