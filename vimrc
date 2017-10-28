"---------------------------------------
" vimrc - Vim Plug-ins and Customization
" cstringer@caltesting.org
"---------------------------------------

"=== Vundle ===
" https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
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
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}
"Plugin 'https://github.com/Valloric/YouCompleteMe.git'
"Plugin 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"=== Pathogen ===
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()


"=== Syntastic ===
" https://github.com/scrooloose/syntastic
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-n> :lprevious<CR>
map <C-m> :lnext<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
set statusline+=%F
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_checkers = ['jsxhint']
"let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'


"=== Tern ===
" http://ternjs.net/doc/manual.html
" enable keyboard shortcuts
let g:tern_map_keys = 1
" show argument hints
let g:tern_show_argument_hints = 'on_hold'
let g:tern_request_timeout = 1000
"map :TD :TernDef
"map :TR :TernRef


"=== JavaScript highlighter ===
" https://github.com/pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1


"=== JSON highlighter ===
" https://github.com/elzr/vim-json
let g:vim_json_syntax_conceal = 0


"=== CtrlP ===
" http://ctrlpvim.github.io/ctrlp.vim/
set runtimepath^=~/.vim/bundle/ctrlp.vim


"=== CSS/LESS ===
" https://github.com/groenewege/vim-less
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>


"=== vim-crosshairs ===
" https://github.com/bronson/vim-crosshairs
set cursorline    " enable the horizontal line
set cursorcolumn  " enable the vertical line
"highlight CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=NONE guibg=darkgrey guifg=NONE
highlight CursorColumn   cterm=NONE ctermbg=darkgrey ctermfg=lightgrey guibg=darkgrey guifg=NONE

"=== JSX Higlighting ===
let g:jsx_ext_required = 0

"=== Preferences ===
syntax enable
set laststatus=2
set pastetoggle=<F2>
set ts=4
set sw=4
set expandtab
set ai
set showmatch
set nofoldenable
set encoding=utf-8
set noswapfile
set autoread
set nocompatible
highlight LineNr ctermfg=darkgrey
