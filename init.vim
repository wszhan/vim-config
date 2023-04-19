
"------------------------------------------------------------
" Built-in Plugins/Add-ons

" File explorer - netrw (network read/write)
" let g:netrw_browse_split = 4 " open file in the previous window; keep one window active
" let g:netrw_liststyle = 3 " tree view explorer
" let g:netrw_banner = 0 " remove banner in file explorer
" let g:netrw_winsize = 25 " limit explorer width
" let g:netrw_altv = 1 " alternate vertical: the plugin opens the file explorer window vertically to the right of the current buffer window
" augroup ProjectDrawer " start a new autocommand group, or a set of commands automatically responding to an event or trigger
"   " clear all commands in this named augroup, a security measure in the case of any existing augroup with the same name
"   autocmd!
"   " when vim is started (entering vim) with any file (the Regex *)
"   " open it in a vertical way
"   autocmd VimEnter * :Vexplore
" augroup END

"------------------------------------------------------------

" Indentation options {{{1
" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2 " shifting uses 2 spaces
set softtabstop=2 " inserting tab creates 2 spaces
set expandtab " insert spaces when tab is entered

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
"set shiftwidth=2
"set tabstop=2

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
"syntax on
syntax enable


"------------------------------------------------------------

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
"------------------------------------------------------------
" Display line numbers on the left
set number
" hybrid line number
" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" turn hybrid line numbers off
" :set nonumber norelativenumber
" :set nonu nornu

" toggle hybrid line numbers
" :set number! relativenumber!
" :set nu! rnu!


"------------------------------------------------------------
" Vim-Plug

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
"
" Make sure you use single quotes

Plug 'scrooloose/nerdtree' " file explorer
Plug 'w0rp/ale' " LSP linting, file fixing, and many more

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"

"------------------------------------------------------------
" NERDTree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
