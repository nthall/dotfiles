#!/bin/bash

DEST=$(whoami)
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

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
    ln -s ${DIR}/${i} /home/${DEST}/${i}
done

clones=(
    scrooloose/syntastic
    tpope/vim-fugitive
    airblade/vim-gitgutter
    pangloss/vim-javascript
    mxw/vim-jsx
    altercation/vim-colors-solarized.git
    skywind3000/asyncrun
    w0rp/ale
    vimwiki/vimwiki
)
mkdir -p /home/${DEST}/.vim/bundle
cd /home/${DEST}/.vim/bundle
for i in ${clones[@]}; do
    git clone http://github.com/${i}
done

appends=(.bashrc)
for i in ${appends[@]}; do
    cat ${i} >> /home/${DEST}/${}
done

exit 0
