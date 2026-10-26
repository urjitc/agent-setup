---
name: file-pr
description: Use when the user asks to file, open, or create a PR.
---

Open a PR on GitHub, ready for review.

**Never a draft.** The review bots only run on a real PR.

## Before filing

Get oriented however this repo calls for, but come away knowing:

- Whether a PR for this branch already exists. Update it rather than filing a second.
- What the diff against the base branch actually contains. Judge the change as it stands, not from memory of the conversation; the work often outgrew the prompts that started it. Say so if something in there doesn't belong.
- Whether the scope holds together. If it spans several unrelated concerns, propose splitting into separate or stacked PRs and wait for my call.
- This repo's title and description conventions; recent history tells you. The PR title usually becomes the squash commit message.

Flag uncommitted work rather than committing it yourself, and get the branch pushed before filing.

## Title

Concise and human-readable, saying why the change matters.

## Body

Open with the problem, in plain language. One or two sentences a teammate could read cold. An implementation inventory or a wall of jargon buries what the reviewer needs first.

Then: what I originally asked for, what you did, and why you did it that way. Depth follows the change; a one-liner doesn't need five headings.

## Done when

The PR is open and ready for review, its body opens with the problem rather than an inventory, and I have the URL.

If I also asked you to babysit it, continue with the `babysit-pr` skill.
