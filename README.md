# ClaudeSetup

## context-bar.sh

A [Claude Code statusLine](https://code.claude.com/docs/en/statusline.md)
script that shows, on two lines:

1. Model name, current directory, and git branch.
2. A threshold-colored context-window usage bar (green under 70%, yellow
   70-89%, red 90%+), session cost, and elapsed duration.

### Install

```sh
./install.sh
```

or manually:

```sh
mkdir -p ~/.claude/scripts
cp context-bar.sh ~/.claude/scripts/
chmod +x ~/.claude/scripts/context-bar.sh
```

Then add the contents of [`settings.json.example`](./settings.json.example)
to `~/.claude/settings.json`:

```json
{
  "statusLine": {
    "type": "command",
    "command": "~/.claude/scripts/context-bar.sh"
  }
}
```

Requires [`jq`](https://jqlang.org/) and a terminal that supports ANSI
colors.
