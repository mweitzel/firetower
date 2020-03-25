# Configuring for the Atom editor

I don't have a firetower specific pluging, but the [save-hooks plugin](https://github.com/oomathias/atom-save-hooks) can be used with the following configuration:

```js
// in your project's on-save.config.js

module.exports = {
  "**": {
    "cmd": "sh /direct-path/to-your/bin/firetower -r",
  }
}
```

You might also want to add `on-save.config.js` to your global git [`core.excludesFile`](https://git-scm.com/docs/gitignore).
