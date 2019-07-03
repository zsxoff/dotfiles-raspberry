#!/bin/bash

cd /tmp; git clone https://github.com/dimkr/loksh; cd ./loksh
make; sudo make install

echo "/usr/bin/ksh" | sudo tee --append /etc/shells
chsh -s /usr/bin/ksh
sudo chsh -s /usr/bin/ksh
