set encoding=utf-8

"""" Style
set background=dark     " darker color scheme
set ruler               " show line number in bar
set nobackup            " don't create pointless backup files; Use VCS instead
set autoread            " watch for file changes
set number              " show line numbers
set showcmd             " show selection metadata
set showmode            " show INSERT, VISUAL, etc. mode
set showmatch           " show matching brackets
set scrolloff=5         " show at least 5 lines above/below
set laststatus=2        " always show statusline (even with only single window)
" highlight ColorColumn ctermbg=1
" set colorcolumn=80,120
set wildmenu            " visual autocomplete for command menu

"""" Highlighting
syntax enable
filetype on             " enable filetype detection
filetype indent on      " enable filetype-specific indenting
filetype plugin on      " enable filetype-specific plugins

"""" Tabs and indenting
set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')

"""" Bells
set noerrorbells        " turn off audio bell
" set visualbell          " but leave on a visual bell

"""" Search
set hlsearch            " highlighted search results
set showmatch           " show matching bracket
set incsearch           " search as characters are entered

"""" Clipboard
" set clipboard=unnamed   " allow yy, etc. to interact with OS X clipboard
