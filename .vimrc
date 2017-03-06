set hlsearch                  "高亮度反白
set autoindent                "自动缩排
set ruler                     "可显示最后一行的状态
set showmode                  "左下角那一行的状态
set number                    "可以在每一行的最前面显示行号
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
set nocompatible               " 设置 vim 为不兼容 vi 模式
"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
set linespace=15
set mouse-=a
set nowritebackup
set nobackup
set noswapfile
let mapleader=";"
vnoremap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader><space> :nohlsearch<cr>

set encoding=utf8               "设置内部编码为utf8
set fileencoding=utf8            "当前编辑的文件编码

filetype plugin on

let g:neocomplcache_enable_at_startup = 1
filetype off                   " 必须的

call plug#begin('~/.vim/plugged')
" Plug 'bling/vim-airline'
" Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Raimondi/delimitMate'
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
" 这里在console运行会失败
if has("gui_running")
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
endif
" 这里在console运行会失败
Plug 'gosukiwi/vim-atom-dark'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'dracula/vim'
call plug#end()
set rtp+=~/.vim/bundle/Vundle.vim

syntax enable
filetype plugin indent on     " 必须有

" set cursorline cursorcolumn

" --------------Tagbar------------------------
" let g:tagbar_width=35
" let g:tagbar_autofocus=1

" --------------vim-javascript---------------
let g:javascript_plugin_jsdoc=1
let g:jsx_pragma_required=0


" -------------status line settings---------------
set laststatus=2
let g:airline_powerline_fonts=1
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
if !has('gui_running')
    set t_Co=256
endif
let g:airline_symbols = {}
" let g:airline#extensions#tabline#enabled=1

" -------------ctrlp-settings---------------------
let g:ctrlp_custom_ignore = 'node_modules'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_buffer_func = {
    \ 'enter': 'Enter_ctrlp',
    \ 'exit':  'Leave_ctrlp',
    \ }

func! Enter_ctrlp()
    set laststatus=0
endfunc

func! Leave_ctrlp()
    set laststatus=2
endfunc
map <Leader>f :CtrlPMRUFiles<CR>
map <Leader>t :NERDTreeToggle<CR>

" --------------snippets--------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" -------------nerd-commenter--------------------
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" ------------- multiple-cursors-----------------
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key='<C-m>'
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" -------------- git---------------------------
set updatetime=50
let g:gitgutter_sign_added = '＋'
let g:gitgutter_sign_modified = '☆'
let g:gitgutter_sign_removed = '✖'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'ww'
let g:airline#extensions#hunks#enabled=0

" -------------emmet-settings--------------------
let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript,javascript.jsx EmmetInstall

set list
set listchars=tab:›\ ,trail:•,extends:>,precedes:<,nbsp:.
" set spell
