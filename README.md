# TEST_marketplace

A personal Claude Code plugin marketplace by RiksPaa.

This repository acts as a plugin source for Claude Code. Add it as a marketplace and install plugins from it directly inside Claude Code.

---

## Add this marketplace to Claude Code

Run the following inside Claude Code:

```
/plugin marketplace add github:RiksPaa/TEST_marketplace
```

You only need to do this once. Claude Code will sync with this repository automatically from then on.

---

## Available plugins

| Plugin | Description |
|---|---|
| `git-summary` | Summarize recent git activity, commits, and open PRs |
| `code-explainer` | Explain a file, function, or code block in plain language |
| `blue-palette` | Style all text using distinct nuances of blue |

---

## Install a plugin

After adding the marketplace, install any plugin with:

```
/plugin install <plugin-name>@TEST_marketplace
```

Example:

```
/plugin install git-summary@TEST_marketplace
```

---

## Update a plugin

```
/plugin update <plugin-name>@TEST_marketplace
```

---

## How plugins work

Each plugin is a folder under `plugins/`. A plugin can contain:

- **Skills** — instructions Claude reads automatically based on context. No slash command needed.
- **Commands** — slash commands the user invokes manually.
- **Agents** — custom agent definitions Claude can spawn.

This marketplace currently contains skills only.

---

## Contributing

To add a new plugin, see the instructions in [CLAUDE.md](./CLAUDE.md).

---

## Structure

```
plugins/
  git-summary/
    .claude-plugin/plugin.json
    skills/git-summary/SKILL.md
```
