#!/bin/zsh
if [ ! -d ~/.hci ]; then
    echo -e "install and configure Vim?(y/yes)"
    read -t 7 -u 0 choice
    if [[ "{y, yes}" =~ $choice ]]; then
        mkdir -p ~/.hci && touch ~/.hci/.{h1,h2,h3} && echo "mkdir"
    else
        exit 0
    fi
fi

sudo pacman -S --noconfirm --needed cppman-git
sudo pacman -S --noconfirm --needed vim
if ! which nvim &> /dev/null; then
    sudo pacman -S --noconfirm --needed neovim
    if [ -f /etc/pip.conf ] || ([ -z "`grep [global] /etc/pip.conf`" ] && [ -z
        "`grep [instsall] /etc/pip.conf`" ]); then
        echo '[global]
        index-url = https://mirrors.aliyun.com/pypi/simple/
        [install]
        trusted-host=mirrors.aliyun.com' >> /etc/pip.conf
    fi
    pip3 install --user pynvim
fi

# install vim-plug
[ ! -f ~/.vim/autoload/plug.vim ] &&
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

[ ! -f ~/.local/share/nvim/site/autoload/plug.vim ] &&
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ctags
<<<<<<< HEAD
sudo pacman -S --noconfirm --needed ctags
=======
! which ctags &> /dev/null && sudo pacman -S --noconfirm ctags
>>>>>>> tmp
# fzf
sudo pacman -S --noconfirm --needed fzf
# ag
sudo pacman -S --noconfirm --needed the_silver_searcher
# ccls
sudo pacman -S --noconfirm --needed ccls
# yarn
sudo pacman -S --noconfirm --needed yarn

# PlugInstall

if [ -f ~/.hci/.h1 ]; then
    [ -s ~/.vimrc ] && echo "vimrc is exists" && mv ~/.vimrc ~/vimrc.back
    [ -s ~/.vimrc.local ] && echo "vimrc.local is exists" && mv ~/.vimrc.local ~/vimrc.local.back
    cp ./vimrc ~/.vimrc 
    mkdir -p ~/.config/nvim && ln -sf ~/.vimrc ~/.config/nvim/init.vim
    #cp ~/.vimrc ~/.config/nvim/init.vim
    rm -rf ~/.hci/.h1
fi
if [ -f ~/.hci/.h2 ]; then
    vim +PlugInstall +all
    rm -rf ~/.hci/.h2
fi
if [ -f ~/.hci/.h3 ]; then
    cp ./vimrc.local ~/.vimrc.local
    # install coc.nvim
    cd ~/.vim/plugged/coc.nvim && ./install.sh && cd -
    rm -rf ~/.hci/.h3
    rm -rf ~/.hci
fi

# 在nvim中可以通过:checkhealth检查服务是否运行(VIM不支持)

# 选择性安装
#coc-python
#coc-snippets
#coc-clangd
#coc-xml
#coc-svg
#coc-rust-analyzer
#coc-json
#coc-java
#coc-html
#coc-go
#coc-git
#coc-css
#coc-cmake
