# best_vim_config
 ```bash
 bash run_me.sh
 ```  
 Add this lines to your .vimrc if you'll like
 ```Ruby
execute pathogen#infect()
set nocompatible
packadd! dracula
syntax enable
colorscheme dracula
filetype plugin indent on
"set t_Co=256
set foldmethod=syntax
"let g:solarized_termcolors=256
"
"let g:SimpylFold_docstring_preview = 1
"
""set background=light
"set background=dark
"colorscheme solarized
""colorscheme delek


set number
set mouse=a
set tags=tags
:set tags=./tags;,tags;

set expandtab       " Expand tabs to spaces.
set shiftwidth=4    " Shift commands (> and < to motion) indent by 4 spaces.
set softtabstop=4   " Use soft tabs, indenting at 4 spaces. (don't use :set  tabstop=4)
set cindent         " Auto-indent mode understands most TMM indentation styles.
set autoindent      " Copy indent from current line when starting a new line
set colorcolumn=90

:imap jk <Esc>
noremap <S-l> gt
noremap <S-h> gT

noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" remove trailig white space
autocmd BufWritePre * :%s/\s+$//e
packloadall

set autochdir
```
#### and you will have a great vim configuration. 
##### happy viming!

