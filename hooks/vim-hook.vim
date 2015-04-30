" add to ~/.vimrc, it will restart existing firetowers for that directory

" on save, restart firetower instance for current working direcotry
autocmd BufWritePost * silent ! firetower -r
