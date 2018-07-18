" My VIM configuration
" Adam Jaamour

" set character encoding
set encoding=utf-8

" editor color scheme
:colorscheme delek

" enable programming languages syntax highlighting 
:syntax on

" enable line numbering
set number

" auto-read changes if the current file is edited externally
set autoread

" highlight the current line when not in insert mode
set cursorline
autocmd InsertEnter,InsertLeave * set cul!

" remember the last edit location in a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" spell checking & automatic wrapping for Git commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

" python-related
set tabstop=4
set shiftwidth=4
set expandtab
