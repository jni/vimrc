#!/bin/bash

if [ $# -eq 1 ]; then
    fn=$1
else fn=~/.vimrc
fi

if [ -f $fn ]; then
    bakfn=${fn}.bak
    mv $fn $bakfn
fi

cp `dirname $0`/vimrc $fn
