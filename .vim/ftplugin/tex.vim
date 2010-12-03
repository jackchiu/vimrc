setlocal makeprg=xelatex\ --output-directory=\/tmp\ --interaction=nonstopmode\ %
map <buffer> <leader>v :exe "!xdg-open ".expand("%:p:r").".pdf" <return>
:inoremap <buffer> [ []<esc>i
:inoremap <buffer> { {}<esc>i
inoremap <buffer> <c-j> <esc>o
:inoremap <buffer> < []<esc>i
