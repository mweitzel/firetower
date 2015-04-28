" add to ~/.vimrc, it will restart existing firetowers for that directory

" function that restarts firetower instance for current working direcotry
function! ResetLocalFiretower()
  :silent ! firetower -r
endfunction

" create hook to reset function save
autocmd BufWritePost * :call ResetLocalFiretower()
