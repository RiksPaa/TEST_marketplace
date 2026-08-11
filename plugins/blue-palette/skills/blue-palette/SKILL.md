---
name: blue-palette
description: Use this skill when the user asks to "use blue text", "make text blue", "style in blue", "blue palette", "use different shades of blue", "all text in blue", or "blue nuances". Applies a range of distinct blue shades to text elements in UI or web output.
version: 1.0.0
---

# Blue Palette Skill

When writing or updating UI code, apply distinct blue shades to text elements so that no two adjacent or related text roles share the same shade.

## Blue shade reference

Use these values. Pick from the full range — do not cluster at one end.

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

## Rules

- Every distinct text role must use a different shade.
- Maintain enough contrast between text and background for readability (WCAG AA minimum).
- If the background is also blue, shift all text shades toward the lighter or darker end to preserve contrast.
- Do not use black, white, or grey for any text — only blue shades from the table above or interpolations between them.

## What to do

1. Identify all text elements in scope: headings, body, labels, links, placeholders, captions.
2. Assign each a shade from the table, starting dark for primary and getting progressively lighter for secondary roles.
3. Apply the colors in CSS, Tailwind classes, inline styles, or whatever styling system is in use.
4. Check contrast. Adjust if any pairing fails readability.

## Output format

When explaining the choices, list each text role and the shade applied. Keep it brief.
