#!/bin/bash
#
# Tunnel port 9091 on a remote server to port 22 on this computer.
#

REMOTE=example@example.com

# Using regular ssh tunnel
# ssh -N -R 9091:localhost:22 "$REMOTE"

# Using autossh
pkill -3 autossh
autossh -M 30000 -f -N -R 9091:localhost:22 "$REMOTE"
