#!/bin/sh
DOTFILES=$(dirname $(realpath $0))
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
rm ~/.zshrc
ln -s $DOTFILES/.zshrc ~
rm ~/.p10k.zsh
ln -s $DOTFILES/.p10k.zsh ~