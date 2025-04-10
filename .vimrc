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
set rtp+=/opt/homebrew/opt/fzf
set lcs+=space:·
let mapleader=";"
vnoremap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader><space> :nohlsearch<cr>

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1
" set termencoding=utf-8
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
" Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'govim/govim'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
" Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'jparise/vim-graphql'
" Plug 'styled-components/vim-styled-components'
Plug 'wakatime/vim-wakatime'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'

Plug '/opt/homebrew/bin/fzf'
Plug 'junegunn/fzf.vim', { 'on': 'Files' }
Plug 'mileszs/ack.vim'

" color schema
Plug 'rhysd/vim-color-spring-night'
Plug 'gosukiwi/vim-atom-dark'
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'


" From nvim-cmp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

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
      \ 'colorscheme': 'one',
      \ 'component': {
      \   'readonly': '%{&readonly?"🔐":""}',
      \ }
    \ }
" -------------fzf and ag-settings---------------------
" set the line below to your fish config
" set -g -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'
map <Leader>t :NERDTreeToggle<CR>
nmap <c-p> :Files<CR>
if executable('ag')
    let g:ackprg = 'ag --vimgrep --ignore node_modules --ignore dist'
endif
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
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

" ----------- vim-go --------------------------------
let g:go_fmt_command = "goimports"

" ---------------- ale settings ----------------------

let g:ale_sign_error = '🌚'
let g:ale_sign_warning = '🌝'

set emoji
set fixendofline




" -------------- vim-cmp ---------------------------


lua <<EOF

  -- https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#confirm-candidate-on-tab-immediately-when-theres-only-one-completion-entry
  local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
  end

  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)

        -- For `mini.snippets` users:
        -- local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
        -- insert({ body = args.body }) -- Insert at cursor
        -- cmp.resubscribe({ "TextChangedI", "TextChangedP" })
        -- require("cmp.config").set_onetime({ sources = {} })
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            if #cmp.get_entries() == 1 then
              cmp.confirm({ select = true })
            else
              cmp.select_next_item()
            end
          --[[ Replace with your snippet engine (see above sections on this page)
          elseif snippy.can_expand_or_advance() then
            snippy.expand_or_advance() ]]
          elseif has_words_before() then
            cmp.complete()
            if #cmp.get_entries() == 1 then
              cmp.confirm({ select = true })
            end
          else
            fallback()
          end
        end, { "i", "s" }),
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
  -- Set configuration for specific filetype.
  --[[ cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' },
    }, {
      { name = 'buffer' },
    })
 })
 require("cmp_git").setup() ]]-- 

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })

  -- Set up lspconfig.

  local servers = { 'tl_ls', 'bashls', 'eslint', 'gopls'  }
  for _, lsp in pairs(servers) do
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    require('lspconfig')[lsp].setup {
      on_attach = on_attach,
      flags = {
        -- This will be the default in neovim 0.7+
        debounce_text_changes = 150,
      },
      capabilities = capabilities,
    }
  end

EOF


