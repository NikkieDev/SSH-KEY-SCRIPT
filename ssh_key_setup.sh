#! /bin/bash

ALGORITHM="RSA"


function GENERATE_ED25519 {
    echo "Generating ED25519 key"
    ssh-keygen -t ed25519 -P "" -f ~/.ssh/id_ed25519
    clear;
    echo $(cat ~/.ssh/id_ed25519.pub)
}

function GENERATE_RSA {
    echo "Generating RSA key"
    ssh-keygen -t rsa -P "" -f ~/.ssh/id_rsa
    clear;
    echo $(cat ~/.ssh/id_rsa.pub)
}

read -p "Choose an algorithm (RSA/ED25519): " ALGORITHM

if [[ $ALGORITHM == "RSA" ]]; then
    GENERATE_RSA;
else if [[ $ALGORITHM == "ED25519" ]]; then
    GENERATE_ED25519;
fi
fi
