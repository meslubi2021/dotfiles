#!/usr/bin/env zsh
DOTFILES=$(dirname $(realpath $0))
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
[[ ! -f ~/.zshrc ]] || mv ~/.zshrc ~/.zshrc.orig
ln -s $DOTFILES/.zshrc ~
[[ ! -f ~/.p10k.zsh ]] || mv ~/.p10k.zsh ~/.p10k.zsh.orig
ln -s $DOTFILES/.p10k.zsh ~
if command -v defaults &> /dev/null; then
  defaults write com.apple.Safari UserStyleSheetLocationURLString -string "$DOTFILES/Safari/stylesheet.css"
fi