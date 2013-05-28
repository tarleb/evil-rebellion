# Evil Rebellion

The aim of the evil rebellion is to get more emacs mode working in a way more
in sync with default vi bindings.  Its main focus is hence to define new
keymaps.  Rebellion adheres to well-defined conventions in its rebuilding of
the emacs keybindings.  This makes it simple to switch between editing using
evil keybindings and other modes like buffer lists or magit revision control.

## Conventions

* Moving is always done using hjkl.  However, h and l may be rebound if
  forward/backward char doesn't make sense in a buffer.
* Longer range jumps are commands prefixed by g.
* Refresh is bound to r.
* Quitting and hiding is bound to q.
* Searching is done using /, ?, n and N.
* d is for 'delete'
* o is for 'open'
* Shift-key gives access to a different flavor of the command.
