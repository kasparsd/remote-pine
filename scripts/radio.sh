#!/bin/bash
#
# PWRKEY should be pulled low at least 1 second and then released to power on/down the module.
# Internally pulled up to VBAT.
#

# Make pin 11 (PWRKEY) available for writing.
if [ ! -d /sys/class/gpio/gpio17 ]; then
    echo 17 > /sys/class/gpio/export
fi

# Set pins as output
echo out > /sys/class/gpio/gpio17/direction

# Toggle PWRKEY high for 1.2 second
echo 1 > /sys/class/gpio/gpio17/value
sleep 1.5s
echo 0 > /sys/class/gpio/gpio17/value
