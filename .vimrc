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

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1
set termencoding=utf-8
" set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
" set fileencoding=utf-8,gbk,gb18030            "当前编辑的文件编码

filetype plugin on

let g:neocomplcache_enable_at_startup = 1
filetype off                   " 必须的

call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Raimondi/delimitMate'
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
Plug 'fatih/vim-go', { 'for': 'go' }
" 这里在console运行会失败
if has("gui_running")
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
endif
" 这里在console运行会失败
Plug 'gosukiwi/vim-atom-dark'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'dracula/vim'
call plug#end()
filetype plugin indent on

syntax enable
" --------------vim-javascript---------------
let g:javascript_plugin_jsdoc=1
let g:jsx_pragma_required=0

" -------------airline settings---------------
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_symbols = {}

" -------------ctrlp-settings---------------------
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store'
let g:ctrlp_open_new_file = 't'
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

" -------------emmet-settings--------------------
let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript EmmetInstall

set list
set listchars=tab:›\ ,trail:•,extends:>,precedes:<,nbsp:.

if ! has('gui_running')
    set t_Co=256
    colorscheme atom-dark-256
endif

