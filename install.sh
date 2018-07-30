#!/bin/bash
#
# Install all config.
#

# Symlink our custom ppp peer config
sudo ln -s config/peer-pine /etc/ppp/peers/pine

# Add our custom network interface
echo "source $PWD/config/peer-pine" > /etc/network/interfaces.d/pine
