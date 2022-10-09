#!/usr/bin/env bash

CURR=$( pwd )
CONFIG=~/.config/qvim
LINK_DIR=~/.local/bin/qvim
DESTINATION=~/.local/share
SRC=./qvim/lua/kernel/utility/qvim.sh

setup () {
    # Handles command
    sudo chmod +x ${SRC}
    cp ${SRC} ${DESTINATION}

    # Symlinks command 'qvim'
    if [[ -L ${LINK_DIR} ]]; then
        sudo rm ${LINK_DIR}
        sudo ln -s ${DESTINATION}/qvim.sh ${LINK_DIR}
    else
        sudo ln -s ${DESTINATION}/qvim.sh ${LINK_DIR}
    fi

    # Symlinks to .config
    if [[ -L ${CONFIG} ]]; then
        sudo rm ${CONFIG}
        sudo ln -s ${CURR}/qvim ${CONFIG}
    else
        sudo ln -s ${CURR}/qvim ${CONFIG}
    fi
}

main () {
    setup
}

main
