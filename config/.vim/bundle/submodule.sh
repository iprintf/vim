#!/bin/bash

vimplugin=$(sed -ne "/^Plugin/p" ~/.vimrc.plugins   \
            | sed -ne "s/^Plugin\ '\(.*\)'$/https:\/\/github.com\/\1.git/p")

for i in $vimplugin
do
    echo $i | grep "vundle.git" &> /dev/null && continue
    echo $i
    #git submodule add $i
done
