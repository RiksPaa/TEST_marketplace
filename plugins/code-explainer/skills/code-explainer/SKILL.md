---
name: code-explainer
description: Use this skill when the user asks to "explain this", "explain this file", "explain this function", "what does this do", "walk me through this code", "break this down", or "explain in plain language". Produces a clear explanation without jargon.
version: 1.0.0
---

# Code Explainer Skill

Explain the targeted code in plain language. The audience may be a non-expert, so avoid jargon and focus on what the code does and why.

## What to do

1. Read the file or code block the user points to.
2. Identify the main purpose in one sentence.
3. Break it down section by section:
   - What each part does
   - Why it exists (if inferrable from context or naming)
   - Any non-obvious side effects or dependencies
4. Flag anything that looks complex, fragile, or surprising.

## Output format

- Start with a one-sentence summary of what the code does overall.
- Use short paragraphs or a numbered list for the breakdown.
- End with a "Things to note" section if there is anything unusual.
- Keep it concise. Do not repeat what the code says — explain what it means.

## What NOT to do

- Do not restate the code line by line.
- Do not use technical jargon without explaining it.
- Do not suggest changes unless the user asks.
