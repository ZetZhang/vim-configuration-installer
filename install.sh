#!/bin/zsh
if [ ! -d ~/.hci ]; then
    echo -e "install and configure Vim?(y/yes)"
    read -t 7 -u 0 choice
    if [[ "{y, yes}" =~ $choice ]]; then mkdir -p ~/.hci && touch ~/.hci/.h1
    else exit 0
    fi
fi

sudo pacman -S --noconfirm --needed {vim,neovim,cppman-git}
if ! which nvim &> /dev/null; then
    if [ -f /etc/pip.conf ] || ([ -z "`grep [global] /etc/pip.conf`" ] && [ -z "`grep [instsall] /etc/pip.conf`" ]); then
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

# ctags & fzf & ag & ccls & yarn
sudo pacman -S --noconfirm --needed {ctags,fzf,the_silver_searcher,ccls,yarn}

# PlugInstall
if [ -f ~/.hci/.h1 ]; then
    [ -s ~/.vimrc ] && echo "vimrc is exists" && mv ~/.vimrc ~/vimrc.back
    [ -s ~/.vimrc.local ] && echo "vimrc.local is exists" && mv ~/.vimrc.local ~/vimrc.local.back
    cp ./vimrc ~/.vimrc 
    mkdir -p ~/.config/nvim && ln -sf ~/.vimrc ~/.config/nvim/init.vim
    #cp ~/.vimrc ~/.config/nvim/init.vim
    mv ~/.hci/.h1 ~/.hci/.h2
fi

[ -f ~/.hci/.h2 ] && vim +PlugInstall +all 
mv ~/.hci/.h2 ~/.hci/.h3

# install coc.nvim
[ -f ~/.hci/.h3 ] && cp ./vimrc.local ~/.vimrc.local && cd ~/.vim/plugged/coc.nvim && ./install.sh && cd - && rm -rf ~/.hci
pip3 install --user pynvim

# 在nvim中可以通过:checkhealth检查服务是否运行(VIM不支持)
# 选择性安装
#coc-{python,snippet,clangd,xlm,svg,rust-analyzer,json,java,html,go,git,css,cmake}
