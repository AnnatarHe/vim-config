" just fix issue https://github.com/macvim-dev/macvim/issues/705
" on macvim snapshot-149: MacVim Snapshot 149
" :silent! pyx import sys
set hlsearch                  "高亮度反白
set autoindent                "自动缩排
set ruler                     "可显示最后一行的状态
set showmode                  "左下角那一行的状态
set number                    "可以在每一行的最前面显示行号
set wrap                      "自动折行
set shiftwidth=2
set tabstop=2
set softtabstop=2
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
set mouse-=a
set nowritebackup
set nobackup
set noswapfile
set noeb
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
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle'}
Plug 'w0rp/ale'

if has('gui_running')
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
endif
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
" Plug 'styled-components/vim-styled-components'
Plug 'wakatime/vim-wakatime'
" Plug 'Shougo/deoplete.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim', { 'on': 'Files' }
Plug 'mileszs/ack.vim'

" color schema
Plug 'rhysd/vim-color-spring-night'
Plug 'gosukiwi/vim-atom-dark'
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim' " or other package manager
call plug#end()
filetype plugin indent on

syntax enable
" --------------vim-javascript---------------
let g:javascript_plugin_jsdoc = 1
let g:jsx_pragma_required = 0

" -------------airline settings---------------
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_symbols = {}


let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'component': {
      \   'readonly': '%{&readonly?"🔐":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
" -------------fzf and ag-settings---------------------
" set the line below to your fish config
" set -g -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'
map <Leader>t :NERDTreeToggle<CR>
nmap <c-p> :Files<CR>
if executable('ag')
    let g:ackprg = 'ag --vimgrep --ignore node_modules --ignore dist'
endif
" search lines in files
cnoreabbrev Ack Ack!
nnoremap <Leader>f :Ack!<Space>

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
let g:gitgutter_sign_added = '😏'
let g:gitgutter_sign_modified = '😵'
let g:gitgutter_sign_removed = '😡'
let g:gitgutter_sign_removed_first_line = '✋'
let g:gitgutter_sign_modified_removed = '😳'
let g:airline#extensions#hunks#enabled=0

" -------------emmet-settings--------------------
let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript,javascript.jsx EmmetInstall

set list
set listchars=tab:›\ ,trail:•,extends:>,precedes:<,nbsp:.

if ! has('gui_running')
    set t_Co=256
    colorscheme atom-dark-256
endif

" ----------- 微信小程序代码高亮 --------------------
au BufRead,BufNewFile *.wpy setlocal filetype=vue.html.javascript.css

" ----------- deoplete ------------------------------
" let g:deoplete#enable_at_startup = 1

" ---------------- ale settings ----------------------

let g:ale_sign_error = '🌚'
let g:ale_sign_warning = '🌝'
