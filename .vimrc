" " Use Vim settings, rather than Vi settings (much better!).
" " This must be first, because it changes other options as a side effect.
set nocompatible

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Ahora si los plugins mios
Plugin 'scrooloose/nerdtree'
" Git plugin nerdtree
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'

" Plugin para completado de html
Plugin 'mattn/emmet-vim'

" Nerd Commenter
Plugin 'scrooloose/nerdcommenter'

" Colorschemes
" Plugin 'NewProggie/NewProggie-Color-Scheme'
" Plugin 'nightsense/seabird'
" Plugin 'nightsense/vim-crunchbang'
" Plugin 'zcodes/vim-colors-basic'
" Plugin 'lu-ren/SerialExperimentsLain'
" Plugin 'gkjgh/cobalt'
" Plugin 'jakwings/vim-colors'
" Plugin 'mom0tomo/dotfiles'
" Plugin 'ayu-theme/ayu-vim'
" Plugin 'carakan/new-railscasts-theme'
Plugin 'danilo-augusto/vim-afterglow'
" Plugin 'tomasiser/vim-code-dark'

" Autocompletion python
Plugin 'davidhalter/jedi-vim'

" Surround
Plugin 'tpope/vim-surround'

" Airline
Plugin 'bling/vim-airline'

Plugin 'jnurmine/Zenburn'

" vim-javascript
Plugin 'pangloss/vim-javascript'

" Haskell Autocompletion
Plugin 'eagletmt/neco-ghc'

" Auto Pairs
Plugin 'jiangmiao/auto-pairs'

" Git gutter
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-git'

" fuGITive
Plugin 'tpope/vim-fugitive'

" VimTEX
Plugin 'lervag/vimtex'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" YouCompleteMe
" Plugin 'valloric/youcompleteme'

" JS
Plugin 'othree/javascript-libraries-syntax.vim'

" Vue
Plugin 'posva/vim-vue'

" Prolog
Plugin 'adimit/prolog.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

syntax enable

set backspace=indent,eol,start

set autoindent
set smartindent

set relativenumber
set number
set hidden

map <F2> :set paste<CR>i  
" Leave paste mode on exit  
au InsertLeave * set nopaste

" 256 colors
if &term == "screen"
    set t_Co=256
endif

" Colorschemes
colorscheme afterglow 

autocmd BufRead,BufNewFile *.py let python_highlight_all=1
autocmd BufRead,BufNewFile *.pl set filetype=prolog
set colorcolumn=80

map <Leader>sc = "cs\"\'ysa\'}ysi}%a static f%i "
let @s = "cs\"\'ysa\'}ysi}%a static f%i "
" UltiSnips config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-J>"

syntax on
