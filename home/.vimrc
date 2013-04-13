set nocompatible

colorscheme vibrantink
colorscheme wombat

filetype plugin indent on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'airblade/vim-gitgutter'
Bundle 'avakhov/vim-yaml'
Bundle 'fwolanski/vim-clojure-conceal'
Bundle 'gmarik/vundle'
Bundle 'guns/vim-clojure-static'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-foreplay'
Bundle 'vim-scripts/Git-Branch-Info'
Bundle 'vim-scripts/paredit.vim'
Bundle 'vim-scripts/rainbow_parentheses.vim'
Bundle 'wincent/Command-T'


" Indenting options
set autoindent   " Keep the indent level when hitting Return
set tabstop=4    " Make tabs appear four spaces wide (default is 8 spaces)
set shiftwidth=4
set noexpandtab

" UI stuff
set showmatch   " Show matching parens as they come up
set ruler       " Show the column number in the status bar
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
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

" move up/down by screen lines instead of file lines.
nnoremap j gj
nnoremap k gk

map = gt
map - gT
let mapleader=","

" "kinesis" tab-switching keys
command KI map - gt | map = gT
" "normal keyboard" tab-switching keys
command KN map = gt | map - gT

" Syntax Highlighting
syntax enable
let python_highlight_all = 1

set statusline=%2n:*%-32.32f%*%{GitBranchInfoString()}\ \ #warningmsg#\ %{SyntasticStatuslineFlag()}\ %*\ %2*%r%m%*\ %=%y\ %15(%l/%L:%c\ (%2p%%)%)

let NERDTreeIgnore=['\.pyc$', '\~$', '*templates/*.py']

" Cmd-T plugin options
set wildignore=*.pyc,*templates/*.py,build,aws,logs/tmp*
let g:CommandTCancelMap='<Esc>'
let g:CommandTMaxFiles=999999

if filereadable(".vim.custom")
    exe 'source' ".vim.custom"
endif
