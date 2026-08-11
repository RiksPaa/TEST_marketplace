# git-summary plugin — Claude Instructions

This plugin contains a single skill: `git-summary`. It lives inside the TEST_marketplace plugin marketplace.

## What this plugin does

The `git-summary` skill instructs Claude to produce a concise summary of recent git activity when triggered by the user. It covers recent commits, uncommitted changes, and open pull requests.

## File structure

```
git-summary/
  .claude-plugin/
    plugin.json     # plugin metadata
  skills/
    git-summary/
      SKILL.md      # skill instructions and trigger phrases
      README.md     # human-readable docs
  CLAUDE.md         # this file
```

## Editing the skill

- To change when the skill activates, edit the `description` field in `SKILL.md` frontmatter.
- To change what Claude does when the skill runs, edit the body of `SKILL.md`.
- Do not change the `name` field in `plugin.json` — it is immutable once published.

## Testing a change

After editing, reinstall the plugin in Claude Code:

```
/plugin update git-summary@TEST_marketplace
```

Then trigger it with one of the phrases listed in the SKILL.md description.

## Scope

This plugin only summarizes git history. It does not write commits, create branches, or modify files.
