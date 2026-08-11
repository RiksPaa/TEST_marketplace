---
name: git-summary
description: Use this skill when the user asks to "summarize git activity", "what changed recently", "show recent commits", "git overview", or "what have I been working on". Produces a concise summary of recent commits, changed files, and open PRs.
version: 1.0.0
---

# Git Summary Skill

Produce a clear, concise summary of recent git activity in the current project.

## What to do

1. Run `git log --oneline -20` to get the last 20 commits
2. Run `git status` to check for uncommitted changes
3. Run `gh pr list --state open` to list open pull requests (if gh CLI is available)
4. Summarize in plain language:
   - What has changed recently (group by theme if possible)
   - Any uncommitted work in progress
   - Open PRs and their status

## Output format

Keep it short. Use bullet points. Lead with the most recent activity. Highlight anything that looks incomplete or blocked.

## Example output

**Recent activity (last 7 commits):**
- Added user authentication flow (3 commits)
- Fixed bug in payment processing
- Updated README

**In progress:** 2 modified files not yet committed

**Open PRs:** 1 — "Add search feature" (draft)
