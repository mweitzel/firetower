# Firetower

Auto run commands from one terminal, restart from another.

There are two main operations:
- `-c` hosts a new command (assumed when no flag provided)
- `-r` restarts an existing firetower

If you run a command with firetower (e.g. `firetower "node server.js"` or `firetower "rspec"`) in one shell session,
calling `firetower -r` from another will restart the command in the original.

The host creates a temporary file `.firetower` to store PIDs and assumes your working directory unless you can specify otherwise.

The `firetower` script is exclusively responsible for running and restarting a command. It does not listen to file system events, so if you want to rerun a script every time your files change, you can use an [editor hook](#editor-hooks).

## Editor hooks

If you use Vim, throw the contents of [this](https://github.com/mweitzel/firetower/blob/master/vim-hook.vim) in your `.vimrc`

## Options:

```
usage: firetower [-h | -c | -r | -s] [command] [--directory=directory] [--clear-scrollback]
  -h help
  -c command - accepts a command to be rand as a string
  -r restart - restarts child process for existing firetower instance
  -s stop    - stops existing firetower instance
  [--directory=directory] specify directory, defaults to current
  [--clear-scrollback] clear scrollback on reach restart
```
## Installation

- throw and appropriately chmodded (u+x) [firetower](https://github.com/mweitzel/firetower/blob/master/firetower) into your `~/usr/bin/`
- make sure `~/usr/bin/` is part of your `$PATH`
- add an [editor hook](#editor-hooks)

PRs welcome!
