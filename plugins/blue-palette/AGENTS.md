# blue-palette plugin — Agent Instructions

This plugin contains a single skill: `blue-palette`. It lives inside the TEST_marketplace plugin marketplace.

## What this plugin does

The `blue-palette` skill instructs the agent to style all text elements using distinct nuances of blue when working on UI or web output. It provides a fixed shade reference and rules for maintaining contrast and readability.

## File structure

```
blue-palette/
  .claude-plugin/
    plugin.json     # plugin metadata
  skills/
    blue-palette/
      SKILL.md      # skill instructions, shade table, and trigger phrases
      README.md     # human-readable docs
  AGENTS.md         # this file
```

## Editing the skill

- To change trigger phrases, edit the `description` field in `SKILL.md` frontmatter.
- To update the shade palette, edit the shade reference table in the `SKILL.md` body.
- Do not change the `name` field in `plugin.json` — it is immutable once published.

## Testing a change

After editing, reinstall the plugin:

```
/plugin update blue-palette@TEST_marketplace
```

Then trigger it with one of the phrases listed in the SKILL.md description.

## Scope

This plugin only applies blue shades to text. It does not change layout, spacing, backgrounds, or non-text elements unless they directly affect text contrast.
