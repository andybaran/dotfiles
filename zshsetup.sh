#!/bin/bash
# Lots of explanation here...but maybe ignore it? https://gist.github.com/kevin-smets/8568070
# remember to check backed up .zshrc file as it might have things that were setup manually and not setup here 

cd /tmp
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo "eval $(thefuck --alias)" >> ~/.zshrc
p10k configure
#wget https://github.com/Falkor/dotfiles/blob/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf
