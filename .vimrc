set nocompatible                "ViImproved
filetype off

set rtp +=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" let Vundle manage Vundle
" required!-
" My Bundles here:
Plugin 'gmarik/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'Tagbar'
Plugin 'ctrlp.vim'
Plugin 'neocomplcache'
Plugin 'Syntastic'
Plugin 'bling/vim-airline'
Plugin 'vim-htmldjango_omnicomplete'
Plugin 'jQuery'
Plugin 'indentpython.vim'
Plugin 'indenthtml.vim'
Plugin 'surround.vim'
Plugin 'repeat.vim'
Plugin 'pathogen.vim'
Plugin 'sudo.vim'
Plugin 'groenewege/vim-less'
Plugin 'rstacruz/sparkup'
Plugin 'The-NERD-Commenter'
Plugin 'burnettk/vim-angular'
Plugin 'fugitive.vim'
Plugin 'nathanaelkane/vim-indent-guides.git'
Plugin 'Solarized'
Plugin 'davidhalter/jedi-vim'

call vundle#end()
filetype plugin indent on	" required!
call pathogen#infect()
"
" Brief help
" :BundleList           - list configured bundles
" :BundleInstall(!)     - install(update) bundles
" :BundleSearch(!) foo  - search(or refresh cache first) for foo
" :BundleClean(!)       - confirm(or auto-approve) removal of unused bundles"


" ColorSchemes
let g:solarized_termcolors=256
let g:solarized_bold=1
let g:solarized_contrast="high"
let g:solarized_termtrans=1
syntax enable
set background=dark
colorscheme solarized

set ruler                           " 우측 하단에 행과 열 표시
set expandtab                       " 탭 문자를 공백 문자로 바꿈
set tabstop=4                       " 탭 간격 설정
set shiftwidth=4                    " 탭이 눌려질 때 공간의 수
set softtabstop=4                   " 탭을 삭제할 때 4칸 단위로 삭제
set backspace=indent,eol,start      " 들여쓰기, 줄의 끝, 시작에서 백스페이스를 사용시 이전 줄과 연결됨
set autoindent                      " 자동 들여쓰기
set copyindent                      " 들여쓰기를 복사함
set showmatch                       " 괄호를 닫을 때 열었던 괄호와 매칭
set smarttab                        " 좀 더 지능적인 들여쓰기
set incsearch                       " 키워드를 입력할 때마다 검색하는 점진검색
set title                           " 제목 표시줄에 파일명 시
set hlsearch                        " 검색어 색상 강조
set history=1000                    " 편집명령기록을 1000개까지 저장
set list                            " 탭문자 줄의 끝 등, 불가시 문자를 표시
set listchars=tab:>-,trail:-,extends:# " 위의 list시에 표시할 문자를 지정한다
set wrap                            " 자동 줄바꿈
set pastetoggle=<leader>p           " 붙여넣기시 자동 들여쓰기 적용
set encoding=utf-8                  " 문자 인코딩
set showcmd                         " 현재 입력하고 있는 명령 보이기
set hidden " Controversial
set wildmenu
set wildmode=list:longest
set visualbell                      " 경고음 대신 화면을 빡임
set number                          " 라인 넘버를 표시
set relativenumber
set undofile                        " undo를 파일로 저장하여 관리
set undodir=$HOME/.vim/undo         " undo history 가 저장될 공간
set undolevels=1000                 " 1000번의 작업취소횟수 가능
set ignorecase                      " 찾기 대소문자 구별하지 않음
set smartcase                       " 표현식의 대소문자는 구분
set gdefault                        " /g 기본기본설정
set colorcolumn=80                  " 색상으로 열 제한 80
set textwidth=79                    " 텍스트 너비 79까지 허용
set cursorline                      " 커서가 있는 라인에 언더라인 표시
set nojoinspaces                    " j 명령 사용시 마침표 뒤 한칸만 space
set noswapfile                      " .swp 파일 생성하지 않음
set splitright                      " 우측으로 분할
set splitbelow                      " 아래쪽으로 분할


" set gui setting
if has('gui_running')
  set guifont=Monaco:h13
  set background=dark
endif


" trailing whitespace del
nnoremap <leader>zz :%s/\s\+$//e<CR>

" Change the mapleader from \ to ,
let mapleader=","

" mapping f arrow key-down like j
noremap f j
noremap t k
" window moving key
noremap <C-J>       <C-W>j
noremap <C-K>       <C-W>k
noremap <C-H>       <C-W>h
noremap <C-L>       <C-W>l
"buffer moving key
noremap <C-n> :bp<CR>
noremap <C-m> :bn<CR>


" The-NERD-tree
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeWinSize=60
let g:nerdtree_tabs_open_on_gui_startup=0


" Tagbar
nmap <leader>t :TagbarToggle<CR>
let g:tagbar_width=40
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_systemenc = 'utf-8'


" Airline
let g:airline_theme             = 'bubblegum'
" let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' | '

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers = ['']


" ctrlp
nnoremap <leader>l :CtrlPLine<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nmap <leader>m :CtrlPMRUFiles<CR>
let g:ctrlp_open_new_file = 'v'
let g:ctrlp_by_filename=1
let g:ctrlp_max_depth = 40
let g:ctrlp_use_caching = 1
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|\.yardoc$|\.pyc$\'


" neocomplcache

" Recommended key-mappings.
let g:neocomplcache_enable_at_startup = 1
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return neocomplcache#smart_close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


" indenthtml
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "html,body,head,tbody"
autocmd Filetype html,htmldjango,less,css,scss,javascript setlocal ts=2 sts=2 sw=2 colorcolumn=80 textwidth=79 smarttab copyindent


" vim-less
autocmd BufRead, BufNewFile *.less set filetype css
" nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

" vim-css3-syntax
augroup VimCSS3Syntax
    autocmd!

    autocmd FileType css setlocal iskeyword+=-
augroup END

:highlight VendorPrefix guifg=#00ffff gui=bold
:match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/


" The-NERD-Commenter
filetype plugin on
let NERDSpaceDelims=1


" Indent-guides
hi IndentGuidesOdd  ctermbg=gray
hi IndentGuidesEven ctermbg=darkgrey

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_indent_levels = 30
let g:indent_guides_start_level = 2
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

