#!/bin/sh
curTimestamp=`date '+%s'`
echo "start backuping..."
mv ~/.vimrc ~/hackingangle_vimrc_$curTimestamp
mv ~/.vim ~/hackingangle_vim_$curTimestamp
echo "start deploy..."
cp .vimrc ~/.vimrc
cp -r .vim ~/
echo "SUCCESS!!!!"
