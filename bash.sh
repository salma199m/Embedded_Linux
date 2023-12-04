#!/bin/bash

Append() {
    echo "export HELLO=\$HOSTNAME" >> ~/.bashrc
    echo "LOCAL=$(whoami)" >> ~/.bashrc
}

if [ -f ~/.bashrc ]; then
    Append
    echo "Environment variables added to .bashrc."

    # Open another terminal
    gnome-terminal &
else
    echo "bashrc not found in home directory"
fi

