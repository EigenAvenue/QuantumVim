#!/usr/bin/env bash

CONFIG_PATH=~/.config/qvim/init.lua
ARGS=${@}

main () {
    exec nvim -u "${CONFIG_PATH}" $1
}

main ${ARGS}
