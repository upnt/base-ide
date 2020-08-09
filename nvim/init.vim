" mapping
let mapleader= "\<Space>" " for plugin mappings
inoremap<silent> jj <ESC>
tnoremap<silent> jj <C-\><C-n>
nmap <Esc><Esc> :nohlsearch<CR>

" encording
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis

" search
set ignorecase
set smartcase
set incsearch
set hlsearch

" tabspace
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent

" other options
set number
set ambiwidth=double
set showmatch
set wildmode=list:longest
set clipboard=unnamed
set shell=bash
set belloff=all
set autochdir
set pumblend=10

" plugin settings
if &compatible
    set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

let s:init_dir='~/.config/nvim'

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#load_toml(s:init_dir . '/dein.toml' ,{'lazy': 0})
  call dein#load_toml(s:init_dir . '/dein_lazy.toml' ,{'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax on

