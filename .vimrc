syntax on
colorscheme wellsokai
set ignorecase
set smartcase         
set expandtab    
set tabstop=2
set nu
set updatetime=250
set clipboard=unnamed
set hlsearch
nnoremap <CR> :nohlsearch<CR><CR>

" Make buffer more like using tabs in sublime.
set hidden
" To open a new empty buffer
nmap <C-t> :enew<cr>
" Move to the next buffer
nmap <C-l> :bnext<CR>
" Move to the previous buffer
nmap <C-h> :bprevious<CR>
" Close the current buffer and move to the previous one
nmap <C-q> :bp <BAR> bd #<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

" fzf
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :FZF<CR>

" ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Vundle Setup
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Vim Theme
" Search
Plugin 'mileszs/ack.vim'
nnoremap <C-A> :Ack!<Space>
Plugin 'majutsushi/tagbar'
nmap <C-B> :TagbarToggle<CR>
" Git
Plugin 'airblade/vim-gitgutter'
" Distraction-Free Writting
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" Status
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" View
Plugin 'scrooloose/nerdtree'
let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeWinSize = 40
let g:NERDTreeMinimalUI = 1
let g:NERDTreeBookmarksFile = $VRT.'/.NERDTreeBookmarks'
let g:NERDTreeIgnore = ['\.pyc$', '\~$', '\.class$']
nnoremap <silent> <C-N> :sil! NERDTreeToggle<CR>
nnoremap <silent> <C-M> :sil! NERDTreeFind<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
