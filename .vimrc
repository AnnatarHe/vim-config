set autoindent                 "自动缩排
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
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

set guifont=Ubuntu\ Mono\ 11.5
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
Bundle 'gmarik/vundle'  
Bundle 'L9'  
Bundle 'tpope/vim-fugitive'  
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

syntax enable
set background=dark
colorscheme solarized
Bundle 'vim-colors-solarized'

"Vim 全屏，调用F11
fun! ToggleFullscreen()
  call system("wmctrl -ir" . v:windowid . " -b toggle,fullscreen")
endf
map <silent> <F11> : call ToggleFullscreen()<CR>
autocmd VimEnter * call ToggleFullscreen()
"powerline 设置
let g:Powerline_colorscheme='solarized256'

"vim-indent-guides的设置 用来标记缩进
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
"NERDTree
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
