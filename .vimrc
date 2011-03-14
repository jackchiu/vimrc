set nocompatible	" set no compatible VI mode

set nobackup		" not use backup file
set history=50		" save 50 line command history
set ruler		" show cursor position on the bar
set showcmd		" show command
set hlsearch		" set search result high light
set incsearch		" set incomplate search high light
set backspace=indent,eol,start
set guifont=Inconsolata\ 16   " set font and size
set imi=0 ims=0

syntax on
filetype plugin indent on

source ~/.vim/function.vim
source ~/.vim/filetype.vim

" some gui settings is here
" ===============================================
colorschem two2tango 	" my favorit color skin

set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=b
set guioptions-=L

let mapleader = ","	" define global map leader key

" some global shortcut key settings
" ===============================================
" close current window
" map <esc><esc> :close <return>

" fast edit & reload vimrc file
" ===============================================
map <leader>ee :e ~/.vimrc <return>
map <leader>ss :source ~/.vimrc <return>
map <leader>ea :e ~/.config/awesome/rc.lua <return>
autocmd! BufWritePost .vimrc source ~/.vimrc

" my define shortcuts 
" ===============================================
map <F1> :call InteractiveHelp() <return>
map <F2> :call ToggleMenu() <return>
map <F3> :NERDTreeToggle <return>
map <F9> :TlistToggle <return>

map <C-s> :write <return>

map <leader>mk :! make <return>
map <leader>rk :! rake <return>
map <leader>ff :echo system('sdcv -n ' . expand("<cword>")) <return>
map <leader>tr :! ~/bin/generate_tags <return>

" taglist plugin (ctags)
" ===============================================
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindows = 1
let Tlist_Use_Right_Window = 1
let Tlist_Use_SingleClick = 1

" lookupfile plugin
" ==============================================
let g:LookupFile_MinPatLength = 2
let g:LookupFile_PreserveLastPattern = 0
let g:LookupFile_PreservePatternHistory = 1
let g:LookupFile_AlwaysAcceptFirest = 1
let g:LookupFile_AllowNewFiles = 0

if filereadable("./.filenametags")
  let g:LookupFile_TagExpr = '"./.filenametags"'
endif

" create file auto load template
autocmd BufNewFile *.tex 0r ~/.vim/templates/xelatex_zh.tex
autocmd BufNewFile,BufRead *.aspx set filetype=html
"
" javascript develop config
" ==============================================
autocmd FileType javascript set makeprg=jsl\ -nologo\ -nofilelisting\ -nosummary\ -nocontext\ -conf\ ~/.config/jsl.conf\ -process\ %
autocmd FileType javascript set errorformat=%f(%l):\ %m
autocmd BufRead,BufNewFile jquery.*.js set syntax=jquery
autocmd FileType javascript set dictionary=~/.vim/dict/javascript.dict
autocmd FileType css set dictionary=~/.vim/dict/css.dict
"
" mini buffer exploer config
" ==============================================
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" vimim settings
" ==============================================
let g:vimim_cloud_sogou=-1

" NERDTree plugin settings
" ==============================================
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1

" rails vim settings
autocmd FileType ruby map <buffer> <leader>ru :Runittest <return>
autocmd FileType ruby map <buffer> <leader>rv :Rview <return>
autocmd FileType ruby map <buffer> <leader>rm :Rmodel <return>
autocmd FileType ruby map <buffer> <leader>rk :Rake <return>

