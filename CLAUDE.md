# TEST_marketplace — Claude Instructions

This is a Claude Code plugin marketplace repository. It follows the official Claude Code plugin structure.

## Repository layout

```
plugins/
  <plugin-name>/
    .claude-plugin/
      plugin.json       # required — name, description, author
    skills/
      <skill-name>/
        SKILL.md        # required — frontmatter + skill instructions
        README.md       # optional — human-readable docs
    README.md           # optional — plugin-level docs
README.md               # marketplace overview
CLAUDE.md               # this file
```

## Adding a new plugin

1. Create `plugins/<plugin-name>/` with the structure above.
2. Fill in `.claude-plugin/plugin.json` — `name` must be unique and never change after publishing.
3. Write the `SKILL.md` — frontmatter fields `name`, `description`, `version` are required.
4. Update the root `README.md` plugin table.
5. Commit and push. Claude Code picks up changes on the next sync.

## Plugin naming rules

- Slugs are lowercase, hyphen-separated (e.g. `git-summary`).
- The `name` field in `plugin.json` is immutable once published. Change `displayName` to rename the label.

## Skill authoring notes

- The `description` field in the SKILL.md frontmatter is what Claude reads to decide when to invoke the skill. Make it a clear list of trigger phrases.
- Keep skill instructions concise and action-oriented. Claude follows them literally.
- One skill per directory. Name the directory the same as the skill slug.

## What NOT to do

- Do not rename plugin slugs after publishing.
- Do not add logic or code to skills — skills are instruction documents, not scripts.
- Do not add emojis.
