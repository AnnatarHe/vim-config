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

"######下面可根据自己的需要，可以不选用#############
set guifont=Monaco:h14  "gvim字体设置
set encoding=utf8               "设置内部编码为utf8
set fileencoding=utf8            "当前编辑的文件编码

"解决consle输出乱码
language messages zh_CN.utf-8
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

filetype plugin on                                             
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

if &term=="xterm"
  set t_Co=8
  set t_Sb=^[[4%dm
  set t_Sf=^[[3%dm
endif

let g:neocomplcache_enable_at_startup = 1

"vundle
set nocompatible               " 设置 vim 为不兼容 vi 模式
filetype off                   " 必须的

"set rtp+=~/.vim/bundle/vundle/
"Windows系统下上一语句修改为
set rtp+=$VIM/vimfiles/bundle/vundle/
call vundle#rc()

" 让 Vundle 管理 Vundle
" 此条必须有
Bundle 'gmarik/vundle'
Bundle 'L9'
" 比如我的 vim 插件
"
" 代码源在 github 上的
Bundle 'mattn/zencoding-vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'

" 代码存放在 vim script 上
Bundle 'FuzzyFinder'

" 代码存放在其他地方
"Bundle 'git://git.wincent.com/command-t.git'
Bundle 'git://github.com/altercation/vim-colors-solarized.git'
" ...

syntax enable
set background=dark
colorscheme solarized
if has('gui_running')
    set background=dark
else
    set background=dark
endif

filetype plugin indent on     " 必须有
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
let g:user_emmet_settings = {
\ 'php' : {
\ 'extends' : 'html',
\ 'filters' : 'c',
\ },
\ 'xml' : {
\ 'extends' : 'html',
\ },
\ 'haml' : {
\ 'extends' : 'html',
\ },
\}
let g:user_emmet_expandabbr_key = '<c-e>'
set writebackup
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
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>