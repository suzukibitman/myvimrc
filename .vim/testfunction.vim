
function! s:EscapeText( text )
	return substitute( escape(a:text, '\' . '^$.*[~'), "\n", '\\n', 'ge' )
endfunction

function! s:GetCurrentWord()
	let l:cword = expand('<cword>')
	if !empty(l:cword)
		let l:regexp = s:EscapeText(l:cword)
		"if l:cword =~# '^\k\+$'
		"	let l:regexp = l:regexp 
		"endif
		return l:regexp
	else
		return ''
	endif
endfunction

let &b:cur_word = s:GetCurrentWord()
let s:cur_word = s:GetCurrentWord()
echon s:cur_word
let i = s:cur_word
":help echo i
:/let


":exe 'let optval = &' . optname

