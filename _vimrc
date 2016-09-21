" set nocompatible
" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin

"解决consle输出乱码
language messages zh_CN.utf-8
"解决菜单乱码
" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim

"自己的配置
set hlsearch                  "高亮度反白
set backspace=2               "可随时用倒退键删除
set autoindent                 "自动缩排
set ruler                      "可显示最后一行的状态
set showmode                 "左下角那一行的状态
set nu                        "可以在每一行的最前面显示行号
" set bg=dark                   "显示不同的底色色调
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
set guioptions-=m
set guioptions-=T
set mouse-=a
set nowritebackup
set nobackup
set noswapfile
set linespace=18
let mapleader=";"
vnoremap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader><space> :nohlsearch<cr>

"######下面可根据自己的需要，可以不选用#############
"set guifont=Cousine\ Powerline:h12  "gvim字体设置
let &guifont="Hack:h12"
set encoding=utf8               "设置内部编码为utf8
set fileencoding=utf8            "当前编辑的文件编码

filetype plugin on

let g:neocomplcache_enable_at_startup = 1

"vundle
filetype off                   " 必须的

set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')
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
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
call vundle#end()            " required
filetype plugin indent on

syntax enable
colorscheme atom-dark
set background=dark

set renderoptions=type:directx,level:0.75,gamma:1.25,contrast:0.25,
            \geom:1,renmode:5,taamode:1
let g:isGUI = 1
set guioptions=icpM

" ------------- airline -------------------
set laststatus=2
let g:airline_powerline_fonts=1
" let g:Powerline_symbols="fancy"
" let g:airline_symbols = {}
" let g:airline#extensions#tabline#enabled=1

"-------------ctrlp-settings---------------------
let g:ctrlp_custom_ignore = 'node_modules'
let g:ctrlp_open_new_file = 't'
map <Leader>f :CtrlPMRUFiles<CR>
map <Leader>t :NERDTreeToggle<CR>

"--------------snippets--------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"-------------nerd-commenter--------------------
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

"------------- multiple-cursors-----------------
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key='<C-m>'
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"-------------emmet-settings--------------------
let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript EmmetInstall
" let g:user_emmet_leader_key='<C-Q>'


let g:javascript_conceal_function="ƒ"
let g:javascript_conceal_null="ø"
let g:javascript_conceal_this="@"
let g:javascript_conceal_return="⇚"
let g:javascript_conceal_undefined="¿"
let g:javascript_conceal_NaN="ℕ"
let g:javascript_conceal_prototype="¶"
let g:javascript_conceal_static="•"
let g:javascript_conceal_super="Ω"
let g:javascript_conceal_arrow_function="⇒"

set list
set listchars=tab:›\ ,trail:•,extends:>,precedes:<,nbsp:.

