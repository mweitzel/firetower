" add to ~/.vimrc, it will restart existing firetowers for that directory

" set to 0 to default to off, 1 to default on
let g:RunFiretower = 1

function! ToggleFiretower()
if g:RunFiretower == 1
    let g:RunFiretower = 0
    echo "firetower hook is disabled"
else
    let g:RunFiretower = 1
    echo "firetower hook is enabled"
endif
endfunction

function! ResetLocalFiretower()
:if g:RunFiretower == 1
  :silent ! firetower -r
:endif
endfunction

" toggle hook from within vim
:command Firetower :call ToggleFiretower()

" create hook to reset firetower instance for current working direcotry
autocmd BufWritePost * :call ResetLocalFiretower()
