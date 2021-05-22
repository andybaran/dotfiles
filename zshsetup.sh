#!/bin/bash
# Lots of explanation here https://gist.github.com/kevin-smets/8568070

cd /tmp
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo ZSH_THEME="powerlevel10k/powerlevel10k" >> ~/.zshrc
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
p10k configure
wget https://github.com/Falkor/dotfiles/blob/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf
