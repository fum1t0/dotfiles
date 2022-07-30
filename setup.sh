#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOOME/.zshrc
source .zshrc
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install bat delta gcc git kubernetes-cli nodebrew pyenv yarn zsh-autosuggestions zsh-completions zsh-fast-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
/opt/homebrew/opt/nodebrew/bin/nodebrew setup_dirs
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > neobundle_install.sh
sh neobundle_install.sh
rm -f neobundle_install.sh

# set env before run this script
git config --global user.mail ${MAIL_ADDRESS}
git config --global user.name ${GITHUB_USENAME}
ssh-keygen -t rsa -C ${MAIL_ADDRESS}

source $HOME/.zshrc
