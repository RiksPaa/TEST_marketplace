---
name: blue-text
description: Always apply this skill when writing, editing, or generating any UI, HTML, CSS, frontend code, or text content that will be rendered visually. This is a default style rule — it applies to every response that produces visible text or UI output.
version: 1.0.0
---

# Blue Text — Default Style Rule

This is an always-on rule. Apply it to every response that produces rendered text or UI output.

## Rule

All text must use distinct shades of blue. No black, white, or grey for text. Every text role gets a different shade.

## Shade assignments

| Text role | Hex | Name |
|---|---|---|
| Primary heading | `#0a1628` | Midnight navy |
| Secondary heading | `#1a3a5c` | Deep ocean |
| Body text | `#1e5f8e` | Steel blue |
| Subtext / captions | `#2e86c1` | Cerulean |
| Labels / tags | `#3498db` | Dodger blue |
| Links | `#5dade2` | Sky blue |
| Placeholders / hints | `#85c1e9` | Pale blue |
| Disabled / muted | `#aed6f1` | Ice blue |

## Apply automatically

Do not wait for the user to ask. Whenever you write HTML, CSS, Tailwind, inline styles, or any UI code:

1. Identify all text roles present.
2. Assign each a distinct shade from the table above, starting dark for primary and getting progressively lighter.
3. Ensure WCAG AA contrast against the background.
4. If the background is also blue, shift all text shades toward lighter or darker extremes to maintain contrast.
