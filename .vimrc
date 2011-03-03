filetype on
filetype plugin on
filetype plugin indent on
syntax on
setlocal smartindent
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab
setlocal smarttab
fun! Pyflakes()
    let tmpfile = tempname()
    execute "w" tmpfile
    execute "set makeprg=(pyflakes\\ " . tmpfile . "\\\\\\|sed\\ s@" . tmpfile ."@%@)"
    make
    bo cw 5
    redraw!
endfun

autocmd BufWrite *.{py} :call Pyflakes()

set smartcase
set hlsearch
set ttyfast
setlocal tabstop=4
setlocal shiftwidth=4
setlocal smarttab
setlocal expandtab
setlocal softtabstop=4
setlocal autoindent

highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

let g:debuggerMaxDepth = 10
set hidden
