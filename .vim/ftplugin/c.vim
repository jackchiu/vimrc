set tabstop=2
set shiftwidth=2 
set softtabstop=2
set expandtab
set autoindent
set cindent
set smartindent
set nu

map <silent> <buffer> <leader><space> :call CompileSimpleCppFile() <return>

function! CompileSimpleCppFile()
  echo system('gcc ' . expand('%:t'))
endfunction
