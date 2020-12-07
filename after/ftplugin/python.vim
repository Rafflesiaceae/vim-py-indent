if g:pymode_motion

    if !&magic
        if g:pymode_warning
            call pymode#error("Pymode motion requires `&magic` option. Enable them")
        endif
        finish
    endif

    nnoremap <buffer> ]]  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    nnoremap <buffer> [[  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    nnoremap <buffer> ]C  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    nnoremap <buffer> [C  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    nnoremap <buffer> ]M  :<C-U>call pymode#motion#move('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', '')<CR>
    nnoremap <buffer> [M  :<C-U>call pymode#motion#move('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 'b')<CR>

    onoremap <buffer> ]]  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    onoremap <buffer> [[  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    onoremap <buffer> ]C  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    onoremap <buffer> [C  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    onoremap <buffer> ]M  :<C-U>call pymode#motion#move('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', '')<CR>
    onoremap <buffer> [M  :<C-U>call pymode#motion#move('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 'b')<CR>

    vnoremap <buffer> ]]  :call pymode#motion#vmove('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    vnoremap <buffer> [[  :call pymode#motion#vmove('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    vnoremap <buffer> ]M  :call pymode#motion#vmove('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', '')<CR>
    vnoremap <buffer> [M  :call pymode#motion#vmove('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 'b')<CR>

    onoremap <buffer> C  :<C-U>call pymode#motion#select_c('^<Bslash>s*class<Bslash>s', 0)<CR>
    onoremap <buffer> aC :<C-U>call pymode#motion#select_c('^<Bslash>s*class<Bslash>s', 0)<CR>
    onoremap <buffer> iC :<C-U>call pymode#motion#select_c('^<Bslash>s*class<Bslash>s', 1)<CR>
    vnoremap <buffer> aC :<C-U>call pymode#motion#select_c('^<Bslash>s*class<Bslash>s', 0)<CR>
    vnoremap <buffer> iC :<C-U>call pymode#motion#select_c('^<Bslash>s*class<Bslash>s', 1)<CR>

    onoremap <buffer> M   :<C-U>call pymode#motion#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=@', '^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 0)<CR>
    onoremap <buffer> aM  :<C-U>call pymode#motion#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=@', '^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 0)<CR>
    onoremap <buffer> iM  :<C-U>call pymode#motion#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=@', '^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 1)<CR>
    vnoremap <buffer> aM  :<C-U>call pymode#motion#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=@', '^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 0)<CR>
    vnoremap <buffer> iM  :<C-U>call pymode#motion#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=@', '^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 1)<CR>

endif
