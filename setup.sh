#!/bin/bash

links=(
    .vimrc 
    .vim 
    .regexlist.vim 
    .tmux.conf 
    .gitconfig 
    .gitignore_global 
    .git-completion
)
for i in ${links[@]}; do
    ln -s ${i} ~/${i}
done

clones=(
    scrooloose/syntastic
    tpope/vim-fugitive
)
cd ~/.vim/bundle
for i in ${clones[@]}; do
    git clone http://github.com/${i}
done

cd ~
appends=(.add_to.bashrc)
for i in ${appends[@]}; do
    fname=`cut -d \. -f 3`
    cat ${i} >> ${fname}
done

exit 0
