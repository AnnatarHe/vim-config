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

source /usr/share/vim/vim74/autoload/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 

if &term=="xterm"
  set t_Co=8
  set t_Sb=^[[4%dm
  set t_Sf=^[[3%dm
endif

let g:neocomplcache_enable_at_startup = 1

set nocompatible              " be iMproved  
filetype off                  " required!  
  
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  
  
" 可以通过以下四种方式指定插件的来源  
" a) 指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空格使用“-”代替。  
Bundle 'L9'  
  
" b) 指定Github中其他用户仓库的插件，使用“用户名/插件名称”的方式指定  
Bundle 'tpope/vim-fugitive'  
Bundle 'Lokaltog/vim-easymotion'  
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  
Bundle 'mattn/emmet-vim.git'
Bundle 'altercation/vim-colors-solarized.git'

" c) 指定非Github的Git仓库的插件，需要使用git地址  
Bundle 'git://git.wincent.com/command-t.git'  

"主题设置开始
syntax enable
set background=dark
colorscheme solarized

if has('gui_running')
    set background=dark
else
    set background=light
endif
"主题设置结束

:set guifont=Ubuntu\ Mono\ 16

filetype plugin indent on     " required!  

filetype plugin on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP


Bundle 'MarcWeber/vim-addon-mw-utils' 
Bundle 'tomtom/tlib_vim' 
Bundle 'honza/vim-snippets' 
Bundle 'Lokaltog/vim-powerline' 
Bundle 'splitjoin.vim' 
Bundle 'junegunn/vim-easy-align' 
Bundle 'ctrlp.vim' 
Bundle 'jelera/vim-javascript-syntax'
Bundle 'Raimondi/delimitMate'
"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>
" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F5> :NERDTreeToggle<cr>

" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <F6> :TagbarToggle<CR>
set mouse-=a

set nowritebackup
set nobackup
set noswapfile
