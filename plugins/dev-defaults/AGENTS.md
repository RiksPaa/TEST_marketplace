# dev-defaults plugin — Agent Instructions

This plugin wires up three always-on behaviors. No trigger phrases needed — everything runs automatically.

## Behaviors

### 1. Blue text (skill)

The `blue-text` skill applies to every response that produces visible UI or text output. All text elements must use distinct shades of blue from the reference palette in `skills/blue-text/SKILL.md`. Apply it without being asked.

### 2. Git status after file changes (hook)

`hooks/post_tool_use.sh` runs after every Write or Edit tool call. It:
- Skips non-code files (markdown, json, lock files, etc.)
- Runs `git status --short` in the file's directory if inside a git repo
- Outputs the result into the conversation so Claude can see what changed

### 3. Companion explanation file (hook)

The same `post_tool_use.sh` hook checks if a companion `.explained.md` file exists alongside the code file. If not, it outputs a reminder. Claude must then create the companion file using the code-explainer skill.

## File structure

```
dev-defaults/
  .claude-plugin/
    plugin.json
  hooks/
    hooks.json         # registers PostToolUse hook
    post_tool_use.sh   # runs git status and checks for companion file
  skills/
    blue-text/
      SKILL.md         # always-on blue palette rule
  AGENTS.md            # this file
```

## Editing

- To change the shade palette, edit the table in `skills/blue-text/SKILL.md`.
- To change which file types are ignored by the hook, edit the `case` statement in `post_tool_use.sh`.
- To disable git status output, remove the git block from `post_tool_use.sh`.
- To disable companion file reminders, remove the companion file block from `post_tool_use.sh`.
