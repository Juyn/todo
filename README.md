# todo

A minimal terminal TODO list with persistent storage. Zero dependencies, pure Python + curses.

## Features

- Interactive TUI with keyboard navigation
- Persistent storage (`~/.local/share/todo/tasks.json`)
- Completed tasks get strikethrough and move to the bottom
- Task grouping via `[Group]` prefix (e.g. `[App Mobile] Fix login`)
- Inline editing with cursor movement
- Quick CLI commands for scripting

## Install

```bash
make install
```

Uninstall:

```bash
make uninstall
```

Custom prefix (default `~/.local/bin`):

```bash
make install PREFIX=/usr/local/bin
```

## Usage

### Interactive mode

```bash
todo
```

| Key | Action |
|-----|--------|
| `↑↓` / `j/k` | Navigate |
| `space` | Toggle done |
| `a` | Add task |
| `e` | Edit task |
| `d` | Delete task |
| `←→` | Move cursor in input |
| `Home/End` | Jump to start/end of input |
| `Esc` | Cancel input |
| `q` | Quit |

### Groups

Prefix a task with `[GroupName]` to organize tasks visually:

```
[App Mobile] Fix login screen
[App Mobile] Add push notifications
[API] Refactor auth module
Do the laundry
```

Tasks are displayed under their group header. Ungrouped tasks appear first.

### CLI mode

```bash
todo add "[API] Fix the bug"
todo list
```
