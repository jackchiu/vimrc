function! ToggleMenu()
	if &guioptions =~# 'm'
		set guioptions-=m
	else
		set guioptions+=m
	endif
endfunction

function! InteractiveHelp()
	exe "help " . expand("<cword>")
endfunction
