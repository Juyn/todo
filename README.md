# todo

A minimal terminal TODO list. Zero dependencies — pure Python + curses.

Data: `~/.local/share/todo/tasks.json`

## Install

```bash
make install            # installs to ~/.local/bin/todo
make install PREFIX=/usr/local/bin  # custom prefix
make uninstall
```

## CLI commands

```bash
todo                        # interactive TUI
todo list                   # print all tasks
todo add "Fix the bug"      # add a task
todo add "[API] Fix auth"   # add a task in the API group
todo done "fix auth"        # mark done (substring match, case-insensitive)
todo delete "fix auth"      # delete a task (substring match)
todo rm "fix auth"          # alias for delete
```

All substring commands require a unique match. If multiple tasks match, they are listed and no action is taken.

## Groups

Prefix task text with `[GroupName]` to organize:

```bash
todo add "[App Mobile] Push notifications"
todo add "[API] Refactor auth"
todo add "Ungrouped task"
```

Display groups tasks under headers. Ungrouped tasks appear first.

## TUI keybindings

| Key | Action |
|-----|--------|
| `↑↓` / `j/k` | Navigate |
| `space` | Toggle done/undone |
| `a` | Add task |
| `e` | Edit task |
| `d` | Delete task |
| `←→` / `Home/End` | Move cursor in input |
| `Esc` | Cancel input |
| `q` | Quit |

## Data format

```json
[
  {"text": "[API] Fix auth", "done": false},
  {"text": "Buy milk", "done": true}
]
```
