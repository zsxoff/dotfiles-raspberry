#!/bin/bash

systools=(
    "acpid"
    "dialog"
    "fuse"
    "highlight"
    "psmisc"
    "usbutils"
)

yay -S --repo --noconfirm ${systools[@]}
