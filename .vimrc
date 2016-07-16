set hlsearch                  "高亮度反白
set backspace=2               "可随时用倒退键删除
set autoindent                "自动缩排
set ruler                     "可显示最后一行的状态
set showmode                  "左下角那一行的状态
set number                    "可以在每一行的最前面显示行号
set bg=dark                   "显示不同的底色色调
syntax on                     "进行语法检验，颜色显示
set wrap                      "自动折行
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab                  "将tab替换为相应数量空格
set smartindent
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
set linespace=15
let mapleader=";"
vnoremap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader><space> :nohlsearch<cr>

"######下面可根据自己的需要，可以不选用#############
set guifont=Hack\ 12
set encoding=utf8               "设置内部编码为utf8
set fileencoding=utf8            "当前编辑的文件编码


filetype plugin on

let g:neocomplcache_enable_at_startup = 1

"vundle
set nocompatible               " 设置 vim 为不兼容 vi 模式
filetype off                   " 必须的

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'lepture/vim-css'
Plugin 'wavded/vim-stylus'
Plugin 'fatih/vim-go'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
"Plugin 'jdkanani/vim-material-theme'
call vundle#end()            " required
filetype plugin indent on

syntax enable
colorscheme atom-dark

filetype plugin indent on     " 必须有

if has("gui_running")
    let g:isGUI = 1
    set guioptions=icpM
else
    let g:isGUI = 0
endif
" set cursorline cursorcolumn

" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
set mouse-=a

set nowritebackup
set nobackup
set noswapfile

"-------------powerline settings---------------
set laststatus=2
let g:airline_powerline_fonts=1
let g:Powerline_symbols="fancy"

"-------------ctrlp-settings-------------------
let g:ctrlp_custom_ignore = 'node_modules'
let g:ctrlp_open_new_file = 't'
map <Leader>t :NERDTreeToggle<CR>

"--------------snippets------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"-------------nerd-commenter------------------
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

"-------------emmet-settings-----------------
let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript EmmetInstall
" let g:user_emmet_leader_key='<C-Q>'

setlocal spell spelllang=en_us

set list
set listchars=tab:›\ ,trail:•,extends:>,precedes:<,nbsp:.
