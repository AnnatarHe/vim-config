set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"自己的配置
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
set guifont=Hack:h12  "gvim字体设置
set encoding=utf8               "设置内部编码为utf8
set fileencoding=utf8            "当前编辑的文件编码

"解决consle输出乱码
language messages zh_CN.utf-8
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

filetype plugin on

let g:neocomplcache_enable_at_startup = 1

"vundle
set nocompatible               " 设置 vim 为不兼容 vi 模式
filetype off                   " 必须的

"set rtp+=~/.vim/bundle/vundle/
"Windows系统下上一语句修改为
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')
Plugin 'VundleVim/Vundle.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'Raimondi/delimitMate'
Bundle 'lepture/vim-css'
Bundle 'wavded/vim-stylus'
"Bundle 'altercation/vim-colors-solarized'
call vundle#end()            " required
filetype plugin indent on

syntax enable
colorscheme atom-dark
if has('gui_running')
    set background=dark
else
    set background=dark
endif

filetype plugin indent on     " 必须有

if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif
if g:isGUI
    au GUIEnter * simalt ~x                           "窗口启动时自动最大化
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

"----------ctrlp-settings---------------"
let g:ctrlp_custom_ignore = 'node_modules'
map <Leader>t :NERDTreeToggle<CR>
