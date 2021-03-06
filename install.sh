#!/bin/sh
NAME=ferbass
EMAIL=ferbass@gmail.com
YADR=$HOME/.yadr.custom

# remove vimify
rm -rfv $HOME/.yadr/vimify
rm -v $HOME/.inputrc
rm -v $HOME/.editrc

# zsh
rm -rfv $HOME/.yadr/zsh/key-bindings.zsh
ln -snfv $YADR/zsh/aliases.zsh $HOME/.yadr/zsh/aliases.custom.zsh
ln -snfv $YADR/zsh/key-bindings.zsh $HOME/.yadr/zsh/zzzz_key-bindings.zsh
ln -snfv $YADR/zsh/pyenv.zsh $HOME/.yadr/zsh/pyenv.zsh
ln -snfv $YADR/zsh/rbenv.zsh $HOME/.yadr/zsh/rbenv.zsh
ln -snfv $YADR/zsh/drivemode.zsh $HOME/.yadr/zsh/drivemode.zsh
ln -snfv $YADR/zsh/openssl.zsh $HOME/.yadr/zsh/openssl.zsh
ln -snfv $YADR/zsh/google-cloud-sdk.zsh $HOME/.yadr/zsh/google-cloud-sdk.zsh

# vim
rm -rfv $HOME/.vim/settings/neocomplete.vim
rm -rfv $HOME/.vim/settings/disable-arrowkeys.vim
ln -snfv $YADR/vim/guifont.vim $HOME/.vim/settings/guifont.custom.vim
ln -snfv $YADR/vim/syntastic.vim $HOME/.vim/settings/syntastic.custom.vim
ln -snfv $YADR/vim/guifont.vim $HOME/.vim/settings/zzzz_guifont.custom.vim
ln -snfv $YADR/vim/vim-pandoc.vim $HOME/.vim/settings/vim-pandoc.vim
ln -snfv $YADR/vim/vimrc.before $HOME/.vimrc.before
ln -snfv $YADR/vim/vimrc.after $HOME/.vimrc.after

# finicky
ln -snfv $YADR/finicky/.finicky.js $HOME/.finicky.js

# iSlate
ln -snfv $YADR/slate/.slate $HOME/.slate

# git
ln -snfv $YADR/git/gitconfig $HOME/.gitconfig.user
read -p "Enter your git name: " NAME
read -p "Enter yout git email: " EMAIL
if [ -n "$NAME" ] && [ -n "$EMAIL" ]
then
  git config --global user.name "$NAME"
  git config --global user.email "$EMAIL"
  echo "Git credentials set to $NAME <$EMAIL>"
fi

#extras
rake install
