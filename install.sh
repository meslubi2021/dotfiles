#!/bin/sh
rm ~/.zshrc
ln -s .dotfiles/.zshrc ~
rm ~/.p10k.zsh
ln -s .dotfiles/.p10k.zsh ~