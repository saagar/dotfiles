" Don't emulate vi bugs
set nocompatible

" Load Pathogen
filetype off
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" SETTINGS

" Syntax highlighting
syntax enable
filetype plugin indent on

" Encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

" Display
set ruler
set title

" Indentation
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set smartindent

" Vim Behaviors
set autoread " auto reload files if updated
set hlsearch " search highlighting
set splitright " open new vsplits on the right

" Treat json files as javascript syntax
autocmd BufNewFile,BufRead *.json set ft=javascript
" AWS template files are pretty much json.
autocmd BufNewFile,BufRead *.template set ft=javascript

" Colors
set t_Co=256
"colorscheme solarized
colorscheme dante
" explicit set for indent guides
set background=dark

" show trailing whitespace and tabs
set list
set listchars=tab:\|\ ,trail:●,extends:>,precedes:<,nbsp:+

" PLUGINS
let g:NERDTreeWinPos = 'right'
let g:NERDTreeDirArrows=1 " Arrow symbols to directories
" NERDTree uses \+n for toggle
map <Leader>n :NERDTreeToggle<CR>
" indent guides size
let g:indent_guides_guide_size = 1


" MAPPINGS
" Note: Use <CR> to simulate the enter key

" ,+/ to clear search
map <silent> ,/ :let @/=""<CR>
" ctrl+N twice to display line numbers
:nmap <C-N><C-N> :set invnumber<CR>
" clear whitespace with \+r
map <Leader>r :%s/\s\+$//<CR>:nohl<CR>
" F2 to toggle paste mode
set pastetoggle=<F2>
