" Install vim-plug if we don't already have it
if empty(glob("~/.vim/autoload/plug.vim"))
  execute '!mkdir -p ~/.vim/plugged'
  execute '!mkdir -p ~/.vim/autoload'
  execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" Colorschemes
" Plug 'altercation/vim-colors-solarized'

" Syntax
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }

" Fancy statusline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim-airline configuration
set laststatus=2 " display airline all the time

" Fuzzy file opener
Plug 'ctrlpvim/ctrlp.vim'

" Make commenting easier
Plug 'tpope/vim-commentary'

" Fugitive: Git from within Vim
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'

"Plug 'reedes/vim-pencil'

Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'pangloss/vim-javascript'
Plug 'cakebaker/scss-syntax.vim'
Plug 'JulesWang/css.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'dpiccone/vim-css-indent'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'stephpy/vim-yaml'
Plug 'rking/ag.vim'
Plug 'jacoborus/tender.vim'

filetype plugin indent on                   " required!
call plug#end()
syntax on

" Change le titre de l'onglet
set title

"show line numbers
set number

"disable bells
set belloff=all

"higlight search results
set hlsearch
set incsearch

"be smart about case when searching
set ignorecase
set smartcase

"don't wrap lines
set nowrap

"show cursor position
set ruler

"show four lines around the cursor when scrolling
set scrolloff=4

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"display tabs and trailing spaces
set list
set listchars=tab:\ \ ,trail:⋅,nbsp:⋅

"indentation
autocmd FileType c    setlocal ts=4 sw=4 sts=4 noexpandtab
autocmd FileType cpp  setlocal ts=4 sw=4 sts=4 noexpandtab
autocmd FileType ruby setlocal ts=2 sw=2 expandtab
autocmd FileType css  setlocal ts=2 sw=2 expandtab
autocmd FileType scss setlocal ts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sw=2 expandtab
autocmd FileType sql  setlocal ts=2 sw=2 expandtab
autocmd FileType coffee setlocal ts=2 sw=2 expandtab

"for some reason, the slim syntax must be forced, doesn't work for all files
au BufReadPost *.slim set syntax=slim

" Tabbing
"@ goes to next tab
map @ :tabn<Enter>

"@ goes to prev tab
map # :tabp<Enter>

""Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

let mapleader = ','

let &colorcolumn="80,100,120"
hi ColorColumn ctermbg=254 guibg=#eeeeee

" If you have vim >=8.0 or Neovim >= 0.1.5
" if (has("termguicolors"))
"   set termguicolors
" endif

"colorscheme solarized
set background=light
"let macvim_skip_colorscheme=1

" set airline theme
let g:airline_theme = 'tender'

set nolist
