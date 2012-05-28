" Prettification
syntax on
set nu

" Info
set ruler
set laststatus=2

" Filetypes
au BufRead,BufNewFile *.ddl   setfiletype mcollective_ddl
au BufRead,BufNewFile *.pp    setfiletype puppet
au BufRead,BufNewFile *.md    setfiletype markdown

" Syntastic settings
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5

" Pathogen config loading
call pathogen#infect()

" Tab expansion
set tabstop=2
filetype plugin indent on
retab

" Autoindentation width
set shiftwidth=2

" Press F2 to make pasting in insert mode work
set pastetoggle=<F2>

