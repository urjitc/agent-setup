---
name: pi-rex-handoff
description: Open a separate user-led interactive Pi session in Rex with focused context and a parent return address for later updates. Use for a handoff, not autonomous delegation.
---

- Follow the installed Rex skill and Pi CLI docs.
- Write a brief with the goal, decisions, open questions, relevant paths,
  prior findings and authorization boundaries. Leave unrelated history out.
- Open a named tab in the correct directory with interactive Pi and
  `@brief-file`. Specify an explicit provider/model, preferably matching
  the current session. Don’t steal focus unless requested.
- Tell the new session this is a user-led handoff: briefly orient the user
  and wait for input, rather than autonomously implementing anything.
- Verify startup and context receipt. Tell the user which tab to use and
  which workstream remains in the original chat.

## Parent link

Before launch, use `rex whoami --json` to verify the parent's Rex address.
Include these literal values in the brief:
- Parent Rex server, session, window and block IDs.
- Parent `PI_SESSION_ID` and `PI_SESSION_FILE`, when available.
- A task ID, absolute result path and reporting trigger.

Save the child's returned Rex IDs too. The child's environment identifies the
child, not the parent. Preserve both addresses in later handoffs.

## Report back

Report when the user asks or at an agreed milestone; the handoff remains user-led.
Write the result summary, then send the parent a short status, result path and
child return address.

Verify the saved target is still the intended Pi with an empty editor.
Use `rex send` with explicit server/session/block IDs; submit with Enter if idle,
or queue a follow-up if busy (default `alt+enter`; check overrides).
Don't change focus, interrupt work, overwrite drafts or edit session files.

Confirm queued/submitted versus acknowledged before claiming delivery or retrying.
If the target is missing or ambiguous, keep the result file and ask—don't guess.
