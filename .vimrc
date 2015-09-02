
set hls "Highlight all search patterns
set incsearch "incremental searching
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set number
set showmatch
set hidden

nnoremap ; :

nmap <silent> ,/ :let @/=""<CR>

fu! OnEditFile()
  syn match EvilSpace "[ \t]\+$" containedin=ALL
  hi link EvilSpace Error
  syn match EvilSpace2 "\t" containedin=ALL
  hi link EvilSpace2 Error
endf

au BufNewFile,BufRead   *     silent call OnEditFile()
au! BufNewFile,BufRead *.gradle setf groovy
au BufnewFile,BufRead *.pp setf puppet

syntax on
