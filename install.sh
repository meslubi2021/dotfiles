#!/bin/sh
DOTFILES=`dirname $0`
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
rm ~/.zshrc
ln -s .dotfiles/.zshrc ~
rm ~/.p10k.zsh
ln -s .dotfiles/.p10k.zsh ~