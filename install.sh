#!/bin/bash

fn=~/.vimrc

if [ -f $fn ]; then
    bakfn=${fn}.bak
    mv $fn $bakfn
fi

cp `dirname $0`/vimrc $fn

fn=~/.gvimrc

if [ -f $fn ]; then
    bakfn=${fn}.bak
    mv $fn $bakfn
fi

cp `dirname $0`/gvimrc $fn
