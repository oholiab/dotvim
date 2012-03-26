" Prettification
syntax on
set nu

" Filetypes
au BufRead,BufNewFile *.ddl   setfiletype mcollective_ddl
au BufRead,BufNewFile *.pp    setfiletype puppet

" Unbastardising tabs
setl expandtab
retab 4

" Syntastic settings
let g:syntastic_enable_signs=1

" Pathogen config loading
call pathogen#infect()

" Swinging a dead chicken
filetype plugin indent on
