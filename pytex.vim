" Syntax for LaTeX files with embedded Python
" environments.
let b:current_syntax = ''
unlet b:current_syntax
runtime! syntax/tex.vim

let b:current_syntax = ''
unlet b:current_syntax
syntax include @TeX syntax/tex.vim

let b:current_syntax = ''
unlet b:current_syntax
syntax include @Python syntax/python.vim
syntax region pythonCode matchgroup=Snip start="\\begin{python}" end="\\end{python}" containedin=@TeX contains=@Python

hi link Snip SpecialComment
let b:current_syntax = 'pytex'
