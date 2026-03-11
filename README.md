# todo

A minimal terminal TODO list with persistent storage. Zero dependencies, pure Python + curses.

## Features

- Interactive TUI with keyboard navigation
- Persistent storage (`~/.local/share/todo/tasks.json`)
- Completed tasks get strikethrough and move to the bottom
- Quick CLI commands for scripting

## Install

```bash
cp todo ~/.local/bin/todo
chmod +x ~/.local/bin/todo
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
| `d` | Delete task |
| `q` | Quit |

### CLI mode

```bash
todo add "Fix the bug"
todo list
```
