call plug#begin('~/.vim/plugged')
" 定义插件，默认用法，和 Vundle 的语法差不多
Plug 'junegunn/vim-easy-align'
Plug 'skywind3000/quickmenu.vim'
" 延迟按需加载，使用到命令的时候再加载或者打开对应文件类型才加载
Plug 'scrooloose/nerdtree' " , { 'on':  'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" 确定插件仓库中的分支或者 tag
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" 辣鸡defx
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
" Optional:
Plug 'honza/vim-snippets'

Plug 'luochen1990/rainbow'
Plug 'morhetz/gruvbox'
" Plug 'altercation/vim-colors-solarized'
" Plug 'icymind/NeoSolarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'Chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'universal-ctags/ctags'
Plug 'ludovicchabant/vim-gutentags'
Plug 'dense-analysis/ale'
Plug 'Shougo/echodoc.vim'

Plug 'tpope/vim-obsession'
" ~/.wakkatime.cfg
Plug 'wakatime/vim-wakatime'
Plug 'idanarye/vim-vebugger'
" help vebugger-launching & help vebugger-usage
Plug 'myusuf3/numbers.vim'
Plug 'vim-scripts/sessionman.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mhinz/vim-startify'
Plug 'lilydjwg/colorizer'

"Plug 'ervandew/supertab'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
" -- depend --
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'rking/ag.vim'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
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
