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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'wavded/vim-stylus'
Plugin 'fatih/vim-go'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
call vundle#end()            " required
filetype plugin indent on

syntax enable

filetype plugin indent on     " 必须有

" set cursorline cursorcolumn

" --------------Tagbar------------------------
" let g:tagbar_width=35
" let g:tagbar_autofocus=1

" --------------vim-javascript---------------
let g:javascript_plugin_jsdoc=1
let g:jsx_pragma_required=0


" -------------airline settings---------------
set laststatus=2
let g:airline_powerline_fonts=1
" let g:Powerline_symbols="fancy"
let g:airline_symbols = {}
" let g:airline#extensions#tabline#enabled=1

" -------------ctrlp-settings---------------------
let g:ctrlp_custom_ignore = 'node_modules'
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
