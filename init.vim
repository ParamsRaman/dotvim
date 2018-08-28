"USE :source init.vim to reload

"///////////////////////////
"setup good old vim options:
"///////////////////////////
set ruler
set cursorline
set number
set hlsearch
set incsearch
set ignorecase
set smartindent
set smarttab "insert tabs on the start of a line according to 
             "shiftwidth, not tabstop
set tabstop=4
set shiftwidth=4
set expandtab
set history=1000 " remember more commands and search history
set undolevels=1000 "use many levels of undo
set title
set visualbell "dont beep
set noerrorbells "dont beep
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set showmatch
"set nobackup "never let vim write a backup file, use modern
"ways (git) to track changes
"set noswapfile
set textwidth=80
set colorcolumn=80
set ma "make buffer modifiable (useful when git etc opens up another window/buffer on the side"

"setup ctags such that it works in all sub-directories also
set tags=tags;/

" figure out smarts based on type of file
filetype plugin indent on
 
set pastetoggle=<F2>

"///////////////////////////
"setup color schemes:
"///////////////////////////
"(solarized.vim must exist in ~/.config/nvim/colors)
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

"///////////////////////////
"plugins:
"///////////////////////////
"(:PlugInstall, :PlugUpdate)
call plug#begin('~/.config/nvim/plugged')
Plug 'myusuf3/numbers.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'tmhedberg/SimpylFold'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
call plug#end()

"///////////////////////////
"plugin config:
"///////////////////////////
"let g:ycm_path_to_python_interpreter = '/Users/params/anaconda2/bin/python'
let g:python2_host_prog = '/Users/params/anaconda2/bin/python'

"///////////////////////////
"mappings:
"///////////////////////////
set nocompatible

"change the mapleader from \ to ,
let mapleader=","

"strips off two full keystrokes from almost every Vim command
nnoremap ; :

"down arrow (j) naturally moves to next row (if lines wrap)
nnoremap j gj
nnoremap k gk

"Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"Install/Update vim plugins
nmap <silent> <leader>si :PlugInstall<CR>
nmap <silent> <leader>su :PlugUpdate<CR>

"Insert newline b/w every line
nmap <silent> <leader>nn :%s/\n\@<!\n\n\@!/\r\r/g<CR>

let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'

"Toggle tagbar
nmap <F8> :TagbarToggle<CR>

"clears hlsearch
nmap <silent> ,/ :nohlsearch<CR>

"toggle textwrap
nmap <F9> :set wrap<CR>
nmap <F10> :set nowrap<CR>

"write using w!! if require sudo access
cmap w!! w !sudo tee % >/dev/null

" fugitive git bindings
nnoremap <silent> <leader>ga :Git add %:p<CR><CR>
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gc :Gcommit -v -q<CR>
nnoremap <silent> <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>ge :Gedit<CR>nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR><CR>
nnoremap <silent> <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <silent> <leader>gp :Ggrep<Space>
nnoremap <silent> <leader>gm :Gmove<Space>
nnoremap <silent> <leader>gb :Git branch<Space>
nnoremap <silent> <leader>go :Git checkout<Space>
nnoremap <silent> <leader>gps :Dispatch! git push<CR>
nnoremap <silent> <leader>gpl :Dispatch! git pull<CR>

"Stop using arrow keys for navigation
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Other notes:
"- Use :gqG to wrap text for entire file
"- Use :gqq to wrap current line

"Comment and uncomment lines
" (Use NerdCommenter plugin and its pre-defined mappings)
" ,cc (single line comment)
" ,cm (multi line comment)
" ,cu (uncomment)
" ,cs (sexy/docstyle comment)
" ,ci (toggle line comment style)
" ,c$ (comment from cursor til end of line)
