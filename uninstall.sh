#!/bin/zsh
if [ -h ~/.config/nvim/init.vim ]; then
    rm -ri ~/.config/nvim/init.vim
    sudo pacman -Rsc --noconfirm neovim
    echo "deleted init.vim && rm neovim"
fi
if [ -d ~/.vim ]; then
    echo -e "rm the vim-plug's directory?(y|yes)"
    read -t 7 -u 0 choice
    if [[ $choice == (y|yes) ]]; then
        rm -rf ~/.vim
        rm -rf ~/.vimrc
        rm -rf ~/.vimrc.local
        rm -rf ~/.viminfo
        [ -f ~/.vimrc.local.back ] &&  mv ~/vimrc.local.back ~/.vimrc.local
        [ -f ~/.vimrc.back ] && mv ~/vimrc.back ~/.vimrc
        rm -rf ~/.cache/tags
        rm -rf ~/.cache/vim
    fi
    echo "deleted vimrc"
fi
[ -f ~/.local/shared/nvim/site/autoload/plug.vim ] && rm -rf ~/.local/shared/nvim/site/autoload/plug.vim
[ -f ~/.vim/autoload/plug.vim ] && rm -rf ~/.vim/autoload/plug.vim
echo "deleted plug.vim"
rm -rf ~/.hci
