source $VIMRUNTIME/vimrc_example.vim
source C:/development/dotfiles/mswin.vim
behave mswin

" simonista/.vimrc
" Don't try to be vi compatible
set nocompatible

set backup
set dir=%TMP%
set backupdir=%TMP%
set directory=%TMP%
set noundofile
set nofixendofline

" Helps force plugins to load correctly when it is turned back on below
filetype off

call plug#begin('~/vimfiles/plugged')

Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'sheerun/vim-polyglot'
Plug 'jlcrochet/vim-cs'
Plug 'psliwka/vim-smoothie'
Plug 'yegappan/lsp'

call plug#end()

" NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
nnoremap <Leader>l :NERDTreeFind<CR>

" Lightline: {{{
let g:lightline = {
  \ 'colorscheme': 'jellybeans',
  \ 'active': {
  \   'right': [
  \     ['lineinfo'], ['percent'],
  \     ['fileformat', 'fileencoding', 'filetype']
  \   ]
  \ }
\}


" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
let mapleader = "\\"

" Security
set modelines=0

" Show line numbers
set number
" Show relative line number
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Whitespace
set wrap
set textwidth=0
set formatoptions=cqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" disable 'select all' in GVim
nnoremap <kPlus> <C-a>
nnoremap <kMinus> <C-x>

" DOS line endings CR+LF
set ff=dos

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set noshowmode
set showcmd

" set pwsh
if has('win32')
  set shell=pwsh
  let &shellcmdflag='-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command'
  if !has('patch-8.2.3079')
    let &shellcmdflag = ' ' . &shellcmdflag
  endif
  let &shellxquote='"'
  set shellxescape= shellquote= noshellslash
  let &shellredir = '2>&1 | Out-File -Encoding Default %s; exit $LastExitCode'
endif

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:?\ ,eol:�
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>tl :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
colorscheme kuroi

" opens gvim maximized
au GUIEnter * simalt ~x

" GUI
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set guifont=Hack:h9:cRUSSIAN

" Settings: {{{
if !exists('g:syntax_on') | syntax enable | endif
set encoding=utf-8
scriptencoding utf-8
" }}}

" TODO: move to ftplugin
" CSharp: {{{
autocmd FileType cs setlocal shiftround shiftwidth=4 tabstop=8 softtabstop=-1 title
autocmd FileType cs setlocal nostartofline splitbelow splitright
autocmd FileType cs setlocal nonumber noruler signcolumn=yes
autocmd FileType cs setlocal mouse=a updatetime=1000
autocmd FileType cs setlocal cc=120
" }}}

" LSP: {{{
let lspOpts = #{
  \ autoHighlightDiags: v:true,
  \ showDiagWithVirtualText: v:true,
  \ diagVirtualTextAlign: 'after'
  \ }
autocmd User LspSetup call LspOptionsSet(lspOpts)

let lspServers = [#{
	\	  name: 'csharp',
	\	  filetype: ['cs', 'csx'],
	\	  path: 'csharp-ls',
	\	  args: []
	\ }]
autocmd User LspSetup call LspAddServer(lspServers)
" }}}
