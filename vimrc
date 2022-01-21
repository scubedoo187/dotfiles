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
set list
set listchars=tab:>-,trail:-,extends:#
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
autocmd bufnewfile,bufread *.go set filetype=go
autocmd bufnewfile,bufread *.html set filetype=htmldjango
autocmd bufnewfile,bufread *.jinja set filetype=htmldjango
autocmd bufnewfile,bufread *.json,*.jsx,*.tsx set filetype=javascript
autocmd filetype html,htmldjango,htmljinja,jinja,less,css,scss,javascript,yaml,xml
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
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'rstacruz/sparkup'
Plugin 'easymotion/vim-easymotion'
Plugin 'rking/ag.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'mbbill/undotree'
Plugin 'vim-scripts/matchit.zip'
Plugin 'Raimondi/delimitMate'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mhinz/vim-startify'

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
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
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
Plugin 'vim-syntastic/syntastic.git'

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
let g:fzf_preview_window = ['right:50%', 'ctrl-/']


" ----------------
" Plugin: Fugitive
" ----------------
nnoremap <Leader>gc :Git checkout 
nnoremap <Leader>gb :Git branch 
nnoremap <Leader>gm :Git merge 
nnoremap <Leader>gg :Git blame<CR>
nnoremap <Leader>gs :Git<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gl :Git pull 
nnoremap <silent> <Leader>gp :Git push 
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


" ----------
" Plugin: Ag
" ----------
nnoremap <Leader>aa :Ag 
nnoremap <Leader>as :Ag <cword><CR>


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


" -----------------
" Plugin: Syntastic
" -----------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" -----------
" Plugin: Ale
" -----------
let b:ale_linters = {'javascript': ['eslint'], 'python': ['flake8']}
let g:ale_fixers = {'python': ['black', 'isort']}
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


" -----------
" Plugin: coc
" -----------

" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-pyright', 'coc-tsserver', 'coc-eslint', 'coc-tslint-plugin', 'coc-styled-components', 'coc-prettier']
