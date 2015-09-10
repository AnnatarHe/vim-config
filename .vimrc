set t_Co=256
set autoindent                 "自动缩排
set smartindent
set linespace=8
set ruler                      "可显示最后一行的状态
set showmode                 "左下角那一行的状态
set nu                        "可以在每一行的最前面显示行号
syntax on                     "进行语法检验，颜色显示
set wrap                      "自动折行
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab                  "将tab替换为相应数量空格
set smartindent
set ignorecase
set nocompatible
set wildmenu
set laststatus=2
set hlsearch
"禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
filetype on                    "开启文件类型检测
filetype plugin on             "根据检测到的不同类型文件加载插件
filetype indent on             "自适应不同语言的智能缩进
"自定义快捷键
let mapleader=";"
vnoremap <Leader>y "+y
nmap <Leader>p "+p
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
Bundle 'gmarik/vundle'  
Bundle 'L9'  
Plugin 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'  
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  
Bundle 'mattn/emmet-vim.git'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'junegunn/vim-easy-align' 
Bundle 'jelera/vim-javascript-syntax'
Bundle 'Raimondi/delimitMate'
Bundle 'plasticboy/vim-markdown'
Bundle 'Lokaltog/vim-powerline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'kien/ctrlp.vim'

let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

let g:Powerline_colorscheme='solarized256'
