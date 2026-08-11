# blue-palette skill

A Claude Code skill that styles all text using distinct nuances of blue — from deep navy to pale ice blue.

---

## What it does

When triggered, Claude will:

1. Identify all text roles in scope (headings, body, labels, links, placeholders, captions)
2. Assign each role a distinct shade of blue from a fixed reference palette
3. Apply the colors using whatever styling system is in use (CSS, Tailwind, inline styles)
4. Check contrast and adjust if any pairing fails readability

No two adjacent or related text roles will share the same shade.

---

## Blue shade reference

| Role | Hex | Name |
|---|---|---|
| Primary heading | `#0a1628` | Midnight navy |
| Secondary heading | `#1a3a5c` | Deep ocean |
| Body text | `#1e5f8e` | Steel blue |
| Subtext / captions | `#2e86c1` | Cerulean |
| Labels / tags | `#3498db` | Dodger blue |
| Links | `#5dade2` | Sky blue |
| Placeholders / hints | `#85c1e9` | Pale blue |
| Disabled / muted | `#aed6f1` | Ice blue |

---

## How to trigger it

Say any of the following in Claude Code:

- "use blue text"
- "make text blue"
- "style in blue"
- "blue palette"
- "use different shades of blue"
- "all text in blue"
- "blue nuances"

---

## Customizing

To change the palette or add new shades, edit the shade reference table in `SKILL.md`.

To change trigger phrases, edit the `description` field in the `SKILL.md` frontmatter.

After editing, update the plugin:

```
/plugin update blue-palette@TEST_marketplace
```
