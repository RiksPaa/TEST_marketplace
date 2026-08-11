# code-explainer skill

A Claude Code skill that explains a file, function, or block of code in plain language.

---

## What it does

When triggered, Claude will read the targeted code and return a clear, jargon-free explanation covering:

- What the code does overall
- What each section or function is responsible for
- Any non-obvious behavior, side effects, or dependencies
- Anything that looks fragile or surprising

---

## How to trigger it

Say any of the following in Claude Code:

- "explain this"
- "explain this file"
- "explain this function"
- "what does this do"
- "walk me through this code"
- "break this down"
- "explain in plain language"

Point to a file, paste a snippet, or just ask while a file is open — Claude picks up the context automatically.

---

## Example output

```
This file handles user authentication. It checks whether an incoming request
carries a valid session token, and if not, redirects to the login page.

1. load_session — reads the session token from the request cookie and looks
   it up in the database. Returns None if the token is missing or expired.

2. require_auth — a decorator applied to protected routes. Calls load_session
   and raises a 401 error if no valid session is found.

Things to note:
- Sessions expire after 24 hours. There is no refresh logic here.
- The token is stored in plaintext in the cookie, which may be a security concern.
```

---

## Customizing

Edit `SKILL.md` to adjust trigger phrases or change what Claude includes in the explanation.

After editing, update the plugin in Claude Code:

```
/plugin update code-explainer@TEST_marketplace
```
