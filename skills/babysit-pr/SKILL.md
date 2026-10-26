---
name: babysit-pr
description: Use when the user asks to babysit or watch a PR.
---

Watch a PR until every reviewer has weighed in, work out which feedback is true, and hand back a rundown.

**This ends in a rundown, not a commit.** Fixing is my call in a separate turn.

## Watching

Wait for CI, review bots, and humans to finish. `gh pr checks --watch` plus the PR's review and comment endpoints are the usual way, but use whatever the repo and host actually give you. Report once, at the end, not on the first thing that lands. If a human is still outstanding long after the bots and CI are done, report what's in and name who you're waiting on.

## Judging

Bots are confidently wrong. Check each comment against the code, reproduce where you can, and land on a verdict: true, false, or out of scope. When you call something false, say how you know.

Scope creep arriving as review feedback is still scope creep. True issues that sit outside this PR get named, not folded in.

For the true ones, go past the surface fix: what let this through? A missing test, a weak type, an unclear seam? One-off, or a smell of something larger?

## The rundown

Per comment: who said it, what they said, your verdict, and for the true ones the root cause and whether it points at something bigger.

Close with what genuinely needs fixing, what you'd leave, and what the pattern of comments says about the change as a whole. Then stop, with the branch untouched.
