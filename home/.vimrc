set nocompatible
filetype off

set shell=bash " vundle doesn't work with fish

colorscheme vibrantink
colorscheme wombat

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'avakhov/vim-yaml'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-classpath'
Plugin 'wincent/Command-T'

call vundle#end()

filetype plugin indent on

" Indenting options
set autoindent   " Keep the indent level when hitting Return
set tabstop=4    " Make tabs appear four spaces wide (default is 8 spaces)
set shiftwidth=4
set noexpandtab

" UI stuff
set showmatch   " Show matching parens as they come up
"set ruler       " Show the column number in the status bar
"set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set wildmenu    " Get a cool menu for tab completing file names
set lz          " Don't redraw the screen in the middle of executing macros
set visualbell t_vb=
set lbr         " Wrap only at word boundaries (default is at any character)
set cursorline
set showcmd

" Search
set ignorecase
set smartcase   " Ignore case, unless caps are used in the search
set incsearch   " Find as you type
set hlsearch
set gdefault " always do a global replace instead of just a first-occurrence-on-the-line replace

" highlight trailing whitespace
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" move up/down by screen lines instead of file lines.
nnoremap j gj
nnoremap k gk

nnoremap + =

nnoremap = gt
nnoremap - gT
let mapleader=","

nnoremap <Space> za
vnoremap <Space> za

nnoremap <leader>r :RustFmt<cr>

" Syntax Highlighting
syntax enable
let python_highlight_all = 1

let NERDTreeIgnore=['\.pyc$', '\~$', '*templates/*.py']

" Cmd-T plugin options
set wildignore=*.pyc,*templates/*.py,build,aws,logs/tmp*
let g:CommandTCancelMap='<Esc>'
let g:CommandTMaxFiles=999999

if filereadable(".vim.custom")
    exe 'source' ".vim.custom"
endif

" Powerline
set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim

set nofoldenable

let g:syntastic_python_checkers = ['python']
