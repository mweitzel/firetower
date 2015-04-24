# Firetower

Simple script to just keep running whatever command you give it.

Its a loop, so `firetower "sleep 1"` will just keep doing indefinitely.

But the stuff in the middle is meant to be mucked with.

`firetower "node server.js"` will keep running `node hello.js` no matter how many times it crashes.

`firetower "ruby server.rb"` will do similarly. Which makes this an alternative to shotgun, or nodemon, or guard, or watchr.

It introduces a tmpfile (.firetower) in the current directory, so this limits use to one concurant instance per directory, but lets you use `-s` and `-r` to stop or restart from another terminal or editor

This doesn't listen to any file system events, so the second part to making this useful is adding an editor hook.

Options:
```
  -h help
  -c command (default)
  -r restart_command
  -s stop_firetower
  [--directory=directory] (defaults to current)
```

## Installation

throw `firetower` into your `~/usr/bin`


## Editor hooks

If you use Vim, throw this in your `.vimrc`:

```
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
  :silent ! ~/Projects/firetower/firetower -r
:endif
endfunction

:command Firetower :call ToggleFiretower()

autocmd BufWritePost * :call ResetLocalFiretower()
```

PRs welcome!
