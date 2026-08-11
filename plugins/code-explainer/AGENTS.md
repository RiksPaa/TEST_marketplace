# code-explainer plugin — Agent Instructions

This plugin contains a single skill: `code-explainer`. It lives inside the TEST_marketplace plugin marketplace.

## What this plugin does

The `code-explainer` skill instructs the agent to produce a plain-language explanation of a file, function, or code block when triggered by the user.

## File structure

```
code-explainer/
  .claude-plugin/
    plugin.json     # plugin metadata
  skills/
    code-explainer/
      SKILL.md      # skill instructions and trigger phrases
      README.md     # human-readable docs
  AGENTS.md         # this file
```

## Editing the skill

- To change when the skill activates, edit the `description` field in `SKILL.md` frontmatter.
- To change what the agent does when the skill runs, edit the body of `SKILL.md`.
- Do not change the `name` field in `plugin.json` — it is immutable once published.

## Testing a change

After editing, reinstall the plugin:

```
/plugin update code-explainer@TEST_marketplace
```

Then trigger it with one of the phrases listed in the SKILL.md description.

## Scope

This plugin only explains existing code. It does not suggest rewrites, refactors, or fixes unless explicitly asked.
