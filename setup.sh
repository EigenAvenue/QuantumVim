#!/usr/bin/env bash

LINK_DIR=/usr/local/bin/qvim
DESTINATION=/usr/local/share

setup () {
    sudo chmod +x ./qvim.sh
    cp ./qvim.sh ${DESTINATION}

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
