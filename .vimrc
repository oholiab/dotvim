" Prettification
syntax on
set nu
set t_Co=256
colorscheme ir_black
set cuc
set cul
" I have a touchscreen linux box and I like to touchy scroll - don't hate me.
let hostname = substitute(system('hostname'), '\n', '', '')
let g:remoteSession = ($SSH_CLIENT != "")
if hostname == "fink"
  if !g:remoteSession
    set mouse=a
  endif
endif
hi CursorLine ctermbg=234
hi CursorColumn ctermbg=234


" Info
set ruler
set laststatus=2

" Filetypes
au BufRead,BufNewFile *.ddl   setfiletype mcollective_ddl
au BufRead,BufNewFile *.pp    setfiletype puppet
au BufRead,BufNewFile *.md    setfiletype markdown
au BufRead,BufNewFile *.cf set ft=cf3
au BufRead,BufNewFile Guardfile set ft=ruby
au BufRead,BufNewFile *.ino set ft=cpp

" Syntastic settings
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5

" Pathogen config loading
call pathogen#infect()

" Tab expansion
set tabstop=2
set expandtab
filetype plugin indent on
set backspace=indent,eol,start " So backspace still works on autoindent

" Autoindentation width
set shiftwidth=2

" Press F2 to make pasting in insert mode work
set pastetoggle=<F2>

" Turn wildmenu on
set wildmenu

" Expand %% to file's directory path
cabbr <expr> %% expand('%:p:h')

"Quicker pane navigation (using Shift+arrow keys)
nmap <silent> <S-Up> :wincmd k<CR>
nmap <silent> <S-Down> :wincmd j<CR>
nmap <silent> <S-Left> :wincmd h<CR>
nmap <silent> <S-Right> :wincmd l<CR>

"Cycle through buffers
nmap <silent> <C-p> :bprevious!<CR>
nmap <silent> <C-n> :bnext!<CR>

"Save when I forgot to sudo vi
cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>

"Easymotion leader
let g:EasyMotion_leader_key = '\'

set laststatus=2

"Hilight 80th column if feature exists
if exists('+colorcolumn')
  hi ColorColumn ctermbg=darkgrey guibg=darkgrey
  set cc=80
endif

"Lisp junk
let g:lisp_rainbow=1
if has('mac')
  let g:slimv_swank_cmd='!osascript -e "tell application \"iTerm\"" -e "tell the first terminal" -e "set mysession to current session" -e "launch session \"Default Session\"" -e "tell the last session" -e "exec command \"/bin/bash\"" -e "write text \"sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp\"" -e "end tell" -e "select mysession" -e "end tell" -e "end tell"'
endif

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1
let g:airline_left_sep = '⭃'
let g:airline_right_sep = '⬵ '
let g:airline_left_alt_sep = '⭄ '
let g:airline_symbols.branch = '⸙'
let g:airline_symbols.paste = '⚸'
let g:airline_symbols.linenr = '⬲ '
let g:airline#extensions#whitespace#symbol = '💀 '
let g:airline#extensions#whitespace#trailing_format = 'tr[%s]'
let g:airline#extensions#whitespace#mixed_indent_format = 'mi[%s]'

let g:airline_mode_map = {
  \ 'i' : '🜏 ',
  \ 'n' : '⛧ ',
  \ }
let g:airline_theme = 'ubaryd'
