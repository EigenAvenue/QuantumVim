#!/usr/bin/env bash

CURR=$( pwd )
CONFIG=~/.config/qvim
LINK_DIR=/usr/local/bin/qvim
DESTINATION=/usr/local/share

setup () {
    # Handles command
    sudo chmod +x ./qvim.sh
    sudo cp ${CURR}/qvim.sh ${DESTINATION}

    # Symlinks .config
    ln -s ${CURR}/qvim ${CONFIG}

    # Symlinks command 'qvim'
    if [[ -L ${LINK_DIR} ]]; then
        sudo rm ${LINK_DIR}
        sudo ln -s ${DESTINATION}/${PROJ}/qvim.sh ${LINK_DIR}
    else
        sudo ln -s ${DESTINATION}/${PROJ}/qvim.sh ${LINK_DIR}
    fi
}

main () {
    setup
}

main
