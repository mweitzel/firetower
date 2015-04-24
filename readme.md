# Firetower

A simple script to just keep running whatever command you give it.

Its a loop, so `firetower "sleep 1"` will just keep going indefinitely.

But the stuff in the middle is meant to be mucked with.

`firetower "node server.js"` will keep running `node hello.js` no matter ho, or how many times, it crashes.  
`firetower "ruby server.rb"` will do similarly. Which makes this an alternative to shotgun, or nodemon, or guard, or watchr.

It introduces a tmpfile (`.firetower`) in the current directory, so this limits use to one concurant instance per directory, but lets you use `-s` and `-r` to stop or restart from another terminal or editor

If you have `firetower "node server.js"` in one window, from another (with the same working directory) call `firetower -r` and your node server should restart.

This doesn't listen to any file system events, so the second part to making this useful is adding an [editor hook](#editor-hooks).

## Editor hooks

If you use Vim, throw the contents of [this](https://github.com/mweitzel/firetower/blob/master/vim-hook.vim) in your `.vimrc`

##Options:

```
  -h help
  -c command - accepts a command to be rand as a string
  -r restart - restarts child process for existing firetower instance
  -s stop    - stops existing firetower instance
  [--directory=directory] specify directory, defaults to current
```
## Installation

- throw and appropriately chmodded (u+x) [firetower](https://github.com/mweitzel/firetower/blob/master/firetower) into your `~/usr/bin/`
- make sure `~/usr/bin/` is part of your `$PATH`
- add an [editor hook](#editor-hooks)

PRs welcome!
