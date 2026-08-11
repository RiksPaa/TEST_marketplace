# git-summary skill

A Claude Code skill that produces a concise summary of recent git activity in the current project.

---

## What it does

When triggered, Claude will:

1. Check the last 20 commits (`git log --oneline -20`)
2. Check for uncommitted changes (`git status`)
3. List open pull requests if the `gh` CLI is available (`gh pr list --state open`)
4. Return a short plain-language summary grouped by theme

---

## How to trigger it

Say any of the following in Claude Code:

- "summarize git activity"
- "what changed recently"
- "show recent commits"
- "git overview"
- "what have I been working on"

Claude detects these phrases and runs the skill automatically. No slash command needed.

---

## Example output

```
Recent activity (last 7 commits):
- Added user authentication flow (3 commits)
- Fixed bug in payment processing
- Updated README

In progress: 2 modified files not yet committed

Open PRs: 1 — "Add search feature" (draft)
```

---

## Customizing

Edit `SKILL.md` to:

- Add or remove trigger phrases (edit the `description` frontmatter field)
- Change what Claude includes in the summary (edit the body)
- Adjust the output format

After editing, update the plugin in Claude Code:

```
/plugin update git-summary@TEST_marketplace
```

---

## Requirements

- A git repository in the current working directory
- `gh` CLI installed and authenticated for PR listing (optional)
