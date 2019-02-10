```
-==: Dotfiles for Raspberry Pi 3 Model B with Arch Linux ARM AArch64
-==: author: zsxoff <zsxoff@gmail.com>

Dotfiles
└──  services/            # setup and run some services
│  ├────  cronie.sh       # setup cron daemon
│  ├────  fake-hwclock.sh # fake hardware clock
│  ├────  nmcli.sh        # network manager
│  ├────  ntp.sh          # time sync
│  └────  preload.sh      # preload files into the RAM
└──  setup/               # base setup
│  ├────  kernel.sh       # Linux kernel for the Raspberry Pi 3 models B/B+
│  ├────  systools.sh     # some useful system tools
│  └────  utils.sh        # some useful utils, like vim, wget and etc.
└──  README.md            # this file
```

# setup for absolutely clean system
After installing Arch Linux, create a new user and set the device name

```bash
su
useradd -m -g users -G wheel username
echo raspberry > /etc/hostname
```

change password for new user and root
```bash
passwd username
passwd root
```

log in with a new user and delete old alarm
```bash
userdel -r alarm
```

install sudo and [create a new entry for a new user](https://wiki.archlinux.org/index.php/Sudo#Configuration)
```bash
su
pacman -S --noconfirm sudo
```

install [git](https://wiki.archlinux.org/index.php/git) and [base-devel](https://www.archlinux.org/groups/x86_64/base-devel/) packages
```bash
sudo pacman -S --noconfirm git base-devel
```

# before running scripts
all scripts for installing packages use [yay](https://github.com/Jguer/yay). You need to install it
```bash
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

# next steps
Install all the scripts from the setup
```bash
cd ./setup
./kernel.sh
./systools.sh
./utils.sh
```

and services that you need from the directory calling services
```bash
cd ./services
./cronie.sh
./fake-hwclock.sh
./nmcli.sh
./ntp.sh
./preload.sh
```