syntax on
au BufRead,BufNewFile *.ddl   setfiletype mcollective_ddl
au BufRead,BufNewFile *.pp    setfiletype puppet
setl expandtab
retab 4
set nu
call pathogen#infect()
filetype plugin indent on
