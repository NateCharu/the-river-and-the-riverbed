#!/usr/bin/env bash
# share.sh — send the thesis link to your friends after validation
# Usage: ./share.sh friend@example.com [friend2@example.com ...]
# Or:    ./share.sh        # interactive mode

set -euo pipefail

THESIS_URL="https://github.com/NateCharu/the-river-and-the-riverbed"
THESIS_TITLE="The River and the Riverbed — A Daoist Inquiry into Antifragile System Architecture"

send_mail() {
  local recipient="$1"
  local subject="${THESIS_TITLE}"
  local body="Hey — I wrote something. It's a thesis on antifragile systems, 

blending the Dao De Jing, Tolkien's worldbuilding, and revolutionary 

science into a single architecture of flow. All original findings from 

a deep system audit. No handrolling, no fluff.

Read it here: ${THESIS_URL}

— Sent from the river"

  echo "📨 Sending to $recipient ..."
  echo "$body" | mail -s "$subject" "$recipient"
  echo "   ✅ Sent"
}

if [ $# -eq 0 ]; then
  echo "Paste email addresses (one per line, Ctrl+D when done):"
  while IFS= read -r email; do
    [ -z "$email" ] && continue
    send_mail "$email"
  done
else
  for email in "$@"; do
    send_mail "$email"
  done
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo " All done. The river flows."
echo " ${THESIS_URL}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
