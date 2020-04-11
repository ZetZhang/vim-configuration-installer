#!/bin/zsh
[ -h ~/.config/nvim/init.vim ] && rm -ri ~/.config/nvim/init.vim
if [ -d ~/.vim ]; then
    echo -e "rm the vim-plug's directory?(y|yes)"
    read -t 7 -u 0 choice
    if [[ "{y, yes}" =~ $choice ]]; then
        rm -rf ~/.vim{rc,rc.local,info}
        [ -f ~/.vimrc.local.back ] &&  mv ~/vimrc.local.back ~/.vimrc.local
        [ -f ~/.vimrc.back ] && mv ~/vimrc.back ~/.vimrc
        rm -rf ~/.cache/{tags,vim}
    fi
fi
[ -f ~/.local/shared/nvim/site/autoload/plug.vim ] && rm -rf ~/.local/shared/nvim/site/autoload/plug.vim
[ -f ~/.vim/autoload/plug.vim ] && rm -rf ~/.vim/autoload/plug.vim
rm -rf ~/.hci
