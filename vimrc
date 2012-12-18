" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on
autocmd vimenter * NERDTree

autocmd BufReadPre *.php set ft=php
autocmd BufReadPre *.inc set ft=php
autocmd BufReadPre *.c set ft=c

autocmd BufNewFile,BufRead *.py call PythonRules()
autocmd FileType python call PythonRules()
function! PythonRules()
    highlight TrailingSemiColon ctermbg=red guibg=red
    match TrailingSemiColon /\;$/
endfunction
let vimrplugin_screenplugin = 0
syntax on
set number
set history=5000
set undolevels=1000
set nobackup
set noswapfile
set ts=4
set sw=4
set bs=2
set et

" Force myself to use jfhg
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

autocmd vimenter * wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set mouse=a
set clipboard=unnamed

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"SyntasticEnable php
""SyntasticEnable javascript
"SyntasticEnable xhtml
""SyntasticEnable python
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
"let g:syntastic_quiet_warnings=1
"
nmap <F8> :TagbarToggle<CR>
let mapleader = ","

map <C-k> <Up>
map <C-j> <Down>
