" ----------------
" General settings
" ----------------
set nocompatible
filetype off

syntax enable

let mapleader=","

set autoindent
set backspace=indent,eol,start
set backupdir=~/.tmp/vim/backup/
set colorcolumn=89
set copyindent
set cursorline
set directory=~/.tmp/vim/swap/
set encoding=utf-8
set expandtab
set formatoptions=cqnr1
set gdefault
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nolist
set nojoinspaces
set number
set pastetoggle=<Leader>p
set relativenumber
set ruler
set scrolloff=1
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set smarttab
set softtabstop=4
set splitbelow
set splitright
set statusline=%<%f\                     " Filename
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
set statusline+=%w%h%m%r                 " Options
set statusline+=%{fugitive#statusline()} " Git Hotness
set statusline+=\ [%{&ff}/%Y]            " Filetype
set statusline+=\ [%{getcwd()}]          " Current dir
set tabstop=4
set textwidth=88
set title
set undodir=~/.tmp/vim/undo/
set undofile
set undolevels=1000
set visualbell
set wildignore+=*.o,*.out,*.obj,*.so,*.pyc
set wildignore+=*.so,*.swp,*.zip,*.pyc
set wildignore+=*.swp,*~,._*
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildmenu
set wildmode=list:longest
set wrap
set mouse=a

" trailing whitespace del
nnoremap <Leader>zz :%s/\s\+$//e<CR>

inoremap <C-c> <Esc>
inoremap <Left> <nop>
inoremap <Down> <nop>
inoremap <Up> <nop>
inoremap <Right> <nop>

noremap <C-J>   <C-W>j
noremap <C-K>   <C-W>k
noremap <C-H>   <C-W>h
noremap <C-L>   <C-W>l

nnoremap bn :bp<CR>
nnoremap bm :bn<CR>
nnoremap bd :bd<CR>
nnoremap td :tabclose<CR>
nnoremap tn :tabnew<CR>
nnoremap th :tabprev<CR>
nnoremap tj :tabfirst<CR>
nnoremap tk :tablast<CR>
nnoremap tl :tabnext<CR>

nnoremap H ^
nnoremap L g_

set wildignore+=*.so,*.swp,*.zip,*.pyc
set wildignore+=*.o,*.out,*.obj,*.so,*.pyc
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/.sass-cache/*
set wildignore+=*.swp,*~,._*

autocmd BufEnter * syntax sync fromstart
autocmd bufnewfile,bufread *.html set filetype=htmldjango
autocmd bufnewfile,bufread *.jinja set filetype=htmldjango
autocmd bufnewfile,bufread *.json,*.jsx,*.tsx set filetype=javascript
autocmd filetype html,htmldjango,htmljinja,jinja,less,css,scss,javascript,yaml,xml,proto
            \ setlocal ts=2 sts=2 sw=2 colorcolumn=89 smarttab copyindent

" -------
" Plugins
" -------

filetype off
set rtp +=~/.vim/bundle/Vundle.vim/
set rtp +=/usr/local/bin/fzf
set rtp +=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")

Plugin 'gmarik/Vundle.vim'

" Plugin list
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
"Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'nvim-tree/nvim-tree.lua'
Plugin 'nvim-tree/nvim-web-devicons'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-dadbod'
Plugin 'kristijanhusak/vim-dadbod-ui'
Plugin 'rstacruz/sparkup'
Plugin 'easymotion/vim-easymotion'
Plugin 'justinmk/vim-sneak'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'mbbill/undotree'
Plugin 'vim-scripts/matchit.zip'
Plugin 'Raimondi/delimitMate'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mhinz/vim-startify'
Plugin 'folke/which-key.nvim'

" Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'zivyangll/git-blame.vim'

" Tmux
Plugin 'christoomey/vim-tmux-navigator'

" Snippet
Plugin 'honza/vim-snippets'
Plugin 'mg979/vim-visual-multi'

" Language / Syntax
Plugin 'neovim/nvim-lspconfig'
Plugin 'hrsh7th/nvim-cmp'
Plugin 'hrsh7th/cmp-nvim-lsp'
Plugin 'hrsh7th/cmp-buffer'
Plugin 'hrsh7th/cmp-path'
Plugin 'hrsh7th/cmp-cmdline'
Plugin 'hrsh7th/cmp-vsnip'
Plugin 'hrsh7th/vim-vsnip'

Plugin 'pangloss/vim-javascript'
Plugin 'yuezk/vim-js'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'plasticboy/vim-markdown'
Plugin 'othree/html5.vim'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'stephpy/vim-yaml'
Plugin 'fatih/vim-go'
Plugin 'styled-components/vim-styled-components'
Plugin 'jparise/vim-graphql'
Plugin 'w0rp/ale'
Plugin 'Vimjas/vim-python-pep8-indent'

" Theme / Appearance
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

" ---------------
" For mac crontab
" ---------------
autocmd filetype crontab setlocal nobackup nowritebackup

" -----------------
" Plugin: Solarized
" -----------------
let g:solarized_termcolors=256
set background=dark
try
    colorscheme solarized
catch /^Vim\%((\a\+)\)\=:E185/
endtry


" ----------------
" Plugin: Nerdtree
" ----------------
let g:nerdtree_tabs_open_on_gui_startup=0
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeWinSize=40
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>nn :NERDTreeToggle<CR>


" ---------------------
" Plugin: Nerdcommenter
" ---------------------
let g:NERDDefaultAlign = 'left'


" ----------------------------------
" Plugin: VimNerdtreeSyntaxHighlight
" ----------------------------------
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1


" ---------------
" Plugin: Airline
" ---------------
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1


" -------------
" Plugin: fzf
" -------------
nmap <Leader>f   :Files<CR>
nmap <Leader>b   :Buffer<CR>
nmap <Leader>bl  :BLines<CR>
nmap <Leader>l   :Lines<CR>
nmap <Leader>gf  :GFiles<CR>
nmap <Leader>gs  :GFiles?<CR>
nmap <Leader>gco :Commits<CR>
nmap <Leader>gbc :BCommits<CR>
nmap <Leader>aa  :Ag 
let g:fzf_preview_window = ['right:50%', 'ctrl-/']


" ----------------
" Plugin: Fugitive
" ----------------
nnoremap <Leader>gc :G checkout 
nnoremap <Leader>gb :G branch 
nnoremap <Leader>gm :G merge 
nnoremap <Leader>gg :G blame<CR>
nnoremap <Leader>gs :G<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gl :G log<CR>
nnoremap <Leader>gf :G fetch origin<CR>
nnoremap <Leader>ggl :G pull origin 
nnoremap <Leader>gpp :G push origin 
nnoremap <silent> <Leader>gw :Gwrite<CR>
nnoremap <silent> <Leader>gr :Gread<CR>


" ----------------
" Plugin: Git-Blame
" ----------------
nnoremap <Leader>m :<C-u>call gitblame#echo()<CR>


" ------------------
" Plugin: Easymotion
" ------------------
" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


" -----------------
" Plugin: Undotree
" -----------------
nnoremap <Leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 2
endif
if !exists('g:undotree_SplitWidth')
    let g:undotree_SplitWidth = 40
endif
if !exists('g:undotree_DiffpanelHeight')
    let g:undotree_DiffpanelHeight = 20
endif
if !exists('g:undotree_DiffAutoOpen')
    let g:undotree_DiffAutoOpen = 1
endif

" -----------------
" Plugin: Gitgutter
" -----------------
let g:gitgutter_max_signs=5000


" ---------------
" Plugin: Tabular
" ---------------
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:<CR>
vmap <Leader>t: :Tabularize /:<CR>
nmap <Leader>t:: :Tabularize /:\zs<CR>
vmap <Leader>t:: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,<CR>
vmap <Leader>t, :Tabularize /,<CR>
nmap <Leader>t<Bar> :Tabularize /<Bar><CR>
vmap <Leader>t<Bar> :Tabularize /<Bar><CR>


" ---------------
" Plugin: tagbar
" ---------------
nmap <Leader>ta :TagbarToggle<CR>


" ---------------
" Plugin: vim-jsx
" ---------------
let g:jsx_ext_required = 0


" ---------------
" Plugin: vim-jsx-pretty
" ---------------
let g:jsx_ext_required = 0
let g:vim_jsx_pretty_template_tags = ['html', 'jsx', 'js']
let g:vim_jsx_pretty_colorful_config = 1
let g:vim_jsx_pretty_highlight_close_tag = 1


" -----------
" Plugin: Ale
" -----------
let b:ale_linters = {'javascript': ['eslint'], 'python': ['flake8']}
let g:ale_fixers = {'python': ['isort']}
nmap <Leader>ale :ALEFix<CR>


" ---------------------
" Plugin: indent-guides
" ---------------------

let g:indent_guides_auto_colors = 1
let g:indent_guides_enable_on_vim_startup = 1


" ----------------
" Plugin: Startify
" ----------------

let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")
let g:startify_session_persistence = 1
nnoremap <leader>sl :SLoad 
nnoremap <leader>sc :SClose<CR>
nnoremap <leader>ss :SSave 


" --------------
" Plugin: vim-go
" --------------
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

augroup go
  autocmd!
  " Show by default 4 spaces for a tab
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
  " :GoBuild and :GoTestCompile
  autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
  " :GoTest
  autocmd FileType go nmap <leader>t  <Plug>(go-test)
  " :GoRun
  autocmd FileType go nmap <leader>r  <Plug>(go-run)
  " :GoDoc
  autocmd FileType go nmap <Leader>d <Plug>(go-doc)
  " :GoCoverageToggle
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
  " :GoInfo
  autocmd FileType go nmap <Leader>i <Plug>(go-info)
  " :GoMetaLinter
  autocmd FileType go nmap <Leader>l <Plug>(go-metalinter)
  " :GoDef but opens in a vertical split
  autocmd FileType go nmap <Leader>v <Plug>(go-def-vertical)
  " :GoDef but opens in a horizontal split
  autocmd FileType go nmap <Leader>s <Plug>(go-def-split)
  " :GoAlternate  commands :A, :AV, :AS and :AT
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END


" -----------------
" Plugin: which-key
" -----------------

set timeoutlen=200
lua << EOF
  local wk = require("which-key")
  wk.setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }

  wk.register ({
    u = { "Undotree" },
  }, { prefix = "<leader>" })
EOF


" -----------------
" Plugin: lspconfig
" -----------------

lua << EOF
  require'lspconfig'.pyright.setup{}

  -- Mappings.
  -- See `:help vim.diagnostic.*` for documentation on any of the below functions
  local opts = { noremap=true, silent=true }
  vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

  -- Use an on_attach function to only map the following keys
  -- after the language server attaches to the current buffer
  local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
  end

  local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
  }
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  require('lspconfig')['pyright'].setup{
    capabilities = capabilities,
    flags = lsp_flags,
    on_attach = on_attach,
    settings = {
      python = {
        analysis = {
          diagnosticMode = 'openFilesOnly',
          useLibraryCodeForTypes = false,
        },
      },
    },
  }

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
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
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

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

EOF


" -----------------
" Plugin: Nvim-tree
" -----------------

lua << EOF
  require("nvim-tree").setup({})

  vim.keymap.set('n', '<leader>nn', ':NvimTreeToggle<CR>')
  vim.keymap.set('n', '<leader>nt', ':NvimTreeFindFile<CR>')
EOF
