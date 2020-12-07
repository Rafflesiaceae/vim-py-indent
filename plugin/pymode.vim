" vi: fdl=1
let g:pymode_version = "0.13.0"

" DESC: Disable script loading
if &cp || &diff
    " Update pymode status to prevent loading in other files and adding this
    " condition to all of them.
    let g:pymode = 0
    finish
endif

" Pymode needs
filetype plugin on

" OPTIONS: {{{

" Disable pymode warnings
call pymode#default('g:pymode_warning', 1)

" Additional python paths
call pymode#default('g:pymode_paths', [])

" Python documentation support
call pymode#default('g:pymode_doc', 1)
call pymode#default('g:pymode_doc_bind', 'K')

" Enable/Disable pymode PEP8 indentation
call pymode#default("g:pymode_indent", 1)

" TODO: currently folding suffers from a bad performance and incorrect
" implementation. This feature should be considered experimental.
" Enable/disable pymode folding for pyfiles.
call pymode#default("g:pymode_folding", 0)
" Maximum file length to check for nested class/def statements
call pymode#default("g:pymode_folding_nest_limit", 1000)
" Change for folding customization (by example enable fold for 'if', 'for')
call pymode#default("g:pymode_folding_regex", '^\s*\%(class\|def\|async\s\+def\) .\+\(:\s\+\w\)\@!')
" call pymode#default("g:pymode_folding_regex", '^\s*\%(class\|def\|async\s\+def\)')

" Enable/disable python motion operators
call pymode#default("g:pymode_motion", 1)

" Auto remove unused whitespaces on save
call pymode#default("g:pymode_trim_whitespaces", 1)

" Set recomended python options
call pymode#default("g:pymode_options", 1)
call pymode#default("g:pymode_options_max_line_length", 79)
call pymode#default("g:pymode_options_colorcolumn", 1)

" Enable/disable vertical display of python documentation
call pymode#default("g:pymode_doc_vertical", 0)

" Minimal height of pymode quickfix window
call pymode#default('g:pymode_quickfix_maxheight', 6)

" Maximal height of pymode quickfix window
call pymode#default('g:pymode_quickfix_minheight', 3)

" Height of preview window
call pymode#default('g:pymode_preview_height', &previewheight)

" Position of preview window
call pymode#default('g:pymode_preview_position', 'botright')

" Prepare to plugin loading
if &compatible
    set nocompatible
endif
filetype plugin on

augroup pymode
