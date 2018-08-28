## How to setup Neovim and plugins

`$ brew install nvim` 
`$ sudo pip install --upgrade neovim`

`$ brew install ctags-exuberant`


## Useful plugins
(Use plug-in manager vim-plug)

vim-easy-align vs tabular (alignment)

nerdtree (file browsing)

vim-fugitive (git integration)

lightline (statusline / tab line for vim)

goyo (distraction free writing)

ctrlp (fuzzy file finder)

YouCompleteMe (code completing engine and several other code formatting features)

syntastic (syntax checking, if you use YCM this is mostly not needed)

vim-indent-object (convenient selection of code at varying indentation levels - useful for python, etc)

vim-surround (for easy quoting and paranthesizing)

vim-gitgutter (good git integration - show modified files etc)

delimitMate (top rated vim-closer plugin - also could use auto-pairs, vim-smartinput)

SimpylFold (code folding for python - use this plugin along with FastFold that makes folding efficient in vim)

vim-python-pep8-indent (improved indentation style for python)

vim-startify (fancy start screen for vim, showing convenient recent files/sessions)

numbers (relative numbering)

ctags (Ctags + Ctrlp + Tagbar - useful for code navigation : https://andrew.stwrt.ca/posts/vim-ctags/)

tagbar (displays side-window with tags in the code)

snippets (UltiSnips - https://vi.stackexchange.com/questions/7466/what-is-the-difference-between-the-vim-snippets-plugins)

vim gui (neovim-dot-app, vimr) 

## Refs

[NeoVim setup] (https://afshinm.name/neovim/)


Note: If using Neovim (nvim), then ~/.config/nvim/init.vim is the config file
that matters. ~/.vim/vimrc (or ~/.vimrc) does not matter. That's useful when
using the traditional vim package.
