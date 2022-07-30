# dotfiles

For reproducing my mac settings.

## Usage

1. install homebrew  
   https://brew.sh
2. clone this repository
3. move some files
   ```bash
   $ cd dotfiles
   $ mv .zshrc .vimrc ~
   $ mv -r .vim/colors ~/.vim
   ```
4. run setup script
   ```bash
   $ MAIL_ADDRESS=example@gmail.com
   $ GITHUB_USER=hoge
   $ sh setup.sh
    ```
5. sync vscode settings
