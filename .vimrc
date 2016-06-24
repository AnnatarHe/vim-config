set hlsearch                  "高亮度反白
set backspace=2               "可随时用倒退键删除
set autoindent                 "自动缩排
set ruler                      "可显示最后一行的状态
set showmode                 "左下角那一行的状态
set nu                        "可以在每一行的最前面显示行号
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
set linespace=15
let mapleader=";"
vnoremap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader><space> :nohlsearch<cr>

"######下面可根据自己的需要，可以不选用#############
set guifont=Hack 12  "gvim字体设置
"let &guifont='Ubuntu Mono:h12'
set encoding=utf8               "设置内部编码为utf8
set fileencoding=utf8            "当前编辑的文件编码


filetype plugin on

let g:neocomplcache_enable_at_startup = 1

"vundle
set nocompatible               " 设置 vim 为不兼容 vi 模式
filetype off                   " 必须的

set rtp+=~/.vim/bundle/vundle/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')
Plugin 'VundleVim/Vundle.vim'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'Raimondi/delimitMate'
Bundle 'lepture/vim-css'
Bundle 'wavded/vim-stylus'
Bundle 'fatih/vim-go'
Bundle 'jdkanani/vim-material-theme'
Plugin 'gosukiwi/vim-atom-dark'
"Bundle 'altercation/vim-colors-solarized'
call vundle#end()            " required
filetype plugin indent on

"syntax enable
"set background=dark
"colorscheme material-theme

syntax enable
colorscheme atom-dark
"if has('gui_running')
    "set background=dark
"else
    "set background=dark
"endif

filetype plugin indent on     " 必须有

if has("gui_running")
    let g:isGUI = 1
    set guioptions=icpM
    if has('win32') || has('win64')
        if (v:version == 704 && has("patch393")) || v:version > 704
            set renderoptions=type:directx,level:0.75,gamma:1.25,contrast:0.25,
                        \geom:1,renmode:5,taamode:1
        endif
    endif
else
    let g:isGUI = 0
endif
if g:isGUI
    "au GUIEnter * simalt ~x                           "窗口启动时自动最大化
    "winpos 100 10                                     "指定窗口出现的位置，坐标原点在屏幕左上角
    "set lines=38 columns=120                          "指定窗口大小，lines为高度，columns为宽度
endif
"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
" set cursorline cursorcolumn

" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
set mouse-=a

set nowritebackup
set nobackup
set noswapfile

" powerline settings
set laststatus=2
let g:airline_powerline_fonts=1
 "设置状态栏符号显示，下面编码用双引号"
let g:Powerline_symbols="fancy"

"----------ctrlp-settings---------------"
let g:ctrlp_custom_ignore = 'node_modules'
map <Leader>t :NERDTreeToggle<CR>
