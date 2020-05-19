call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf.vim'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/quickmenu.vim'
Plug 'skywind3000/vim-quickui'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs' , { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
if has('nvim')
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins'  }
else
    Plug 'Shougo/defx.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'godlygeek/tabular'
Plug 'Chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'

Plug 'luochen1990/rainbow'
Plug 'morhetz/gruvbox'
" Plug 'altercation/vim-colors-solarized'
" Plug 'icymind/NeoSolarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'itchyny/lightline.vim'
Plug 'lilydjwg/colorizer'

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'universal-ctags/ctags'
Plug 'ludovicchabant/vim-gutentags'
Plug 'dense-analysis/ale'
Plug 'Shougo/echodoc.vim'

" ~/.wakkatime.cfg
Plug 'wakatime/vim-wakatime'
Plug 'myusuf3/numbers.vim'
Plug 'vim-scripts/sessionman.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mhinz/vim-startify'
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'
" Plug 'scrooloose/vim-slumlord'
Plug 'previm/previm'
if has('nvim')
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
else
    Plug 'iamcco/markdown-preview.vim'
endif
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'Flowerowl/ici.vim'
Plug 'terryma/vim-smooth-scroll'

Plug 'cespare/vim-toml'
Plug 'terryma/vim-expand-region'

"Plug 'ervandew/supertab'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'rking/ag.vim'
Plug '/usr/bin/fzf'
" Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif

" COC
let g:coc_global_extesions = ['coc-snippets', 'coc-git', 'coc-todolist', 'coc-spell-checker', 'coc-lists', 'coc-highlight', 'coc-svg',
            \ 'coc-clangd', 'coc-cmake', 'coc-rls', 'coc-rust-analyzer', 'coc-go', 
            \ 'coc-tsserver', 'coc-html', 'coc-css', 'coc-java', 'coc-python', 'coc-flutter', 'coc-emmet',
            \ 'coc-xml', 'coc-yaml', 'coc-json', 'coc-markdownlint', 'coc-vimlsp', 'coc-yank',
            \ 'coc-actions', 'coc-bookmark', 'coc-browser',
            \ 'coc-calc', 'coc-cssmodules', 'coc-lsp-wl', 'coc-metals', 'coc-phpls', 'coc-powershell', 
            \ 'coc-tasks', 'coc-template', 'coc-translator']
