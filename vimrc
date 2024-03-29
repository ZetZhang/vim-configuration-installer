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
Plug 'ujihisa/tabpagecolorscheme'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tomasr/molokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'chriskempson/base16-vim'
Plug 'sjl/badwolf'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'relastle/bluewery.vim'

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
Plug 'mhinz/vim-crates'

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
Plug 'mzlogin/vim-markdown-toc'
Plug 'plasticboy/vim-markdown'
if has('nvim')
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
else
    Plug 'iamcco/markdown-preview.vim'
endif
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'terryma/vim-smooth-scroll'

Plug 'cespare/vim-toml'
Plug 'terryma/vim-expand-region'
Plug 'cpiger/neodebug'
Plug 'puremourning/vimspector'

Plug 'jceb/vim-orgmode'
Plug 'mattn/calendar-vim'
" Qt
Plug 'peterhoeg/vim-qml'
"C++ switcher
Plug 'mark2185/vim-alternator'
" table
Plug 'dhruvasagar/vim-table-mode'
" tabline
" Plug 'mg979/vim-xtabline'
" ranger
Plug 'kevinhwang91/rnvimr'
" visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" calendar
Plug 'itchyny/calendar.vim'
" xmake
" Plug 'luzhlon/xmake.vim'
" Plug 'luzhlon/x.vim'
" Plug 'luzhlon/qrun.vim'
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
