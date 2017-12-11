#!/usr/bin/env sh

ln -fs $(pwd)/.zshrc ${HOME}/.
ln -fs $(pwd)/.vimrc ${HOME}/.
ln -fs $(pwd)/.tmux.conf ${HOME}/.
ln -fs $(pwd)/.zshenv ${HOME}/.

# install the pure prompt
npm install --global pure-prompt

# install zsh nice to haves
brew install zsh-autosuggestions zsh-syntax-highlighting

# install aactivator
pip2 install aactivator
