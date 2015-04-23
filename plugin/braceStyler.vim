function! s:ToOTBS()		" One true brace style
	:%s/\n\W*{\W*/ {/g
	echom "beautified"
	autocmd BufWritePre * call s:ToBNL()
endfunction

function! s:ToBNL()			" brace on next line
	:%s/\(\W*\)\(.\+\){$/\1\2\r\1{/g
	echom "uglified"
endfunction

:command Bb call s:ToOTBS()
:command Bu call s:ToBNL()
" autocmd BufRead * call s:ToOTBS()
