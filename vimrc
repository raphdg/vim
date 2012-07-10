"-----------------------------------------------------------------------------
" Global Stuff
"-----------------------------------------------------------------------------

" Get pathogen up and running
filetype off 
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Set guifont
set guifont=Monospace\ 10
" show line numbers on the site
" set number

" set 80 caracter line
set colorcolumn=80
" set the search scan to wrap lines
set wrapscan

" I'm happy to type the case of things.  I tried the ignorecase, smartcase
" thing but it just wasn't working out for me
set noignorecase

" Make command line two lines high
set ch=1

" set visual bell
"set vb

" Disable visualbell and bell
set visualbell t_vb=

" Make sure that unsaved buffers that are to be put in the background are 
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" Set the status line the way i like it
set stl=%f\ %m\ %r%{fugitive#statusline()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Show the current mode
set showmode

" Switch on syntax highlighting
syntax on

" Hide the mouse pointer while typing
set mousehide

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" Allow the cursor to go in to "invalid" places
set virtualedit=block

" Make the command-line completion better
set wildmenu

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Set the textwidth to be 80 chars
set textwidth=80

" Set Gui Options
set guioptions=acg

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Add the unnamed register to the clipboard
set clipboard+=unnamed

" Automatically read a file that has changed on disk
set autoread

set grepprg=grep\ -nH\ $*

" Toggle fullscreen mode
nmap <silent> <F3> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

" System default for mappings is now the "," charater
let mapleader = ","

"----------------
" Command-T stuff
" ----------------
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>
set wildignore=*.pyc,*~

"-----------------
" Solarized stuff
" ----------------
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

"-----------------------
" NERDTree configuration
"-----------------------

" Increase window size to 35 columns
let NERDTreeWinSize=35

" map <F7> to toggle NERDTree window
nmap <silent> <F7> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\env','\.vim$', '\~$', '\.pyc$', '\.swp$', '\.egg-info$', '^dist$', '^build$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\~$']
let NERDTreeHightlightCursorline=1

"-------------------
" PEP8 plugin stuff
" ------------------
let g:pep8_map='<leader>8'
