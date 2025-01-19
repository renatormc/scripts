#!/bin/bash
src_folder="$HOME/.renatormc/src"
mkdir $src_folder -p
cd $src_folder && git clone https://github.com/renatormc/$1 && cd $1 && chmod +x ./install.sh && ./install.sh
