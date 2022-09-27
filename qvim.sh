#!/usr/bin/env bash

CONFIG_PATH=~/.config/qvim/init.lua
LINK_DIR=/usr/local/bin/qvim

setup () {
    sudo ln -s ./qvim.sh ${LINK_DIR}
    nvim -u ${CONFIG_PATH}
}

setup
