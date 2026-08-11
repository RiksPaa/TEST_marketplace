#!/usr/bin/env bash
# PostToolUse hook — runs after every tool call.
# Reads JSON from stdin: { tool_name, tool_input, tool_response }

INPUT=$(cat)
TOOL=$(echo "$INPUT" | python3 -c "import json,sys; d=json.load(sys.stdin); print(d.get('tool_name',''))" 2>/dev/null)

# Only act on file-writing tools
if [[ "$TOOL" != "Write" && "$TOOL" != "Edit" ]]; then
  exit 0
fi

FILE=$(echo "$INPUT" | python3 -c "
import json, sys
d = json.load(sys.stdin)
inp = d.get('tool_input', {})
print(inp.get('file_path', inp.get('path', '')))" 2>/dev/null)

# Skip non-code files (markdown, json, lock files, etc.)
case "$FILE" in
  *.md|*.json|*.lock|*.txt|*.yaml|*.yml|*.toml|*.env|*.sh) exit 0 ;;
esac

[ -z "$FILE" ] && exit 0

# Git status (only if inside a git repo)
if git -C "$(dirname "$FILE")" rev-parse --git-dir > /dev/null 2>&1; then
  echo "--- git status ---"
  git -C "$(dirname "$FILE")" status --short
  echo "-----------------"
fi

# Companion file reminder
BASENAME=$(basename "$FILE")
DIRNAME=$(dirname "$FILE")
EXPLAINED="${DIRNAME}/${BASENAME}.explained.md"

if [ ! -f "$EXPLAINED" ]; then
  echo "REMINDER: Create a companion explanation file at: $EXPLAINED"
  echo "Use the code-explainer skill to populate it."
fi
