#!/bin/bash
src_folder="~/.renatormc/src"
mkdir $src_folder -p
cd $src_folder && git clone https://github.com/renatormc/$1 && cd $1 && ./install
