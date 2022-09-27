#!/usr/bin/env bash

CONFIG_PATH=~/.config/qvim/init.lua

main () {
    nvim -u ${CONFIG_PATH}
}

main
