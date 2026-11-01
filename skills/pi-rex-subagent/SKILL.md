---
name: pi-rex-subagent
description: Delegate work to a separate Pi agent in a visible Rex tab, preserve the parent return address, and report results back safely when running Pi inside Rex.
---

- Follow the installed Rex skill and Pi CLI docs.
- Write a focused brief with the task, relevant context/paths, constraints,
  allowed writes and output location. Start with fresh context.
- Open a named tab in the correct directory without stealing focus.
  Run interactive Pi with `@brief-file`, not `--print` or redirected output.
- Specify an explicit provider/model, preferably matching the parent.
  Save the Rex IDs and verify startup.
- Check progress through terminal captures and result files. Interactive Pi
  stays open after finishing; don’t wait for process exit.
- Review the evidence before reporting findings, limitations and result paths.
  Don’t overlap writes, expand scope or publish changes without authorization.

## Parent link

Before launch, use `rex whoami --json` to verify the parent's Rex address.
Include these literal values in the brief:
- Parent Rex server, session, window and block IDs.
- Parent `PI_SESSION_ID` and `PI_SESSION_FILE`, when available.
- A task ID, absolute result path and reporting trigger.

Save the child's returned Rex IDs too. The child's environment identifies the
child, not the parent. Preserve both addresses in later handoffs.

## Report back

Report when the delegated task finishes or is blocked; don't wait for Pi to exit.
Write the result summary, then send the parent a short status, result path and
child return address.

Verify the saved target is still the intended Pi with an empty editor.
Use `rex send` with explicit server/session/block IDs; submit with Enter if idle,
or queue a follow-up if busy (default `alt+enter`; check overrides).
Don't change focus, interrupt work, overwrite drafts or edit session files.

Confirm queued/submitted versus acknowledged before claiming delivery or retrying.
If the target is missing or ambiguous, keep the result file and ask—don't guess.
